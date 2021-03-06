ndoc.table.fwVotes = {}

local nextVoteId = 1

function fw.vote.createNew(vTitle, vDesc, vPlayers, vCallback, vYText, vNText, vote_len)
	if type(vTitle) == 'table' then
		vDesc = vTitle.desc or vTitle.description
		vPlayers = vTitle.players or player.GetAll()
		vCallback = vTitle.callback
		vYText = vTitle.yesText or 'Yes'
		vNText = vTitle.noText or 'No'
		vote_len = vTitle.length or vTitle.len or 15
	end

	ndoc.table.fwVotes[nextVoteId] = {
		id = nextVoteId,
		title = vTitle,
		text = vDesc,
		players = ra.util.map_copy(vPlayers, function(player)
			return player:UserID()
		end),
		yesText = vYText,
		noText = vNText,
		end_time = CurTime() + vote_len
	}
end

util.AddNetworkString("fw.sendVoteQuery")
util.AddNetworkString("fw.sendVoteResponse")
util.AddNetworkString("fw.sendVote")

local vCount = 1
ndoc.table.fwVotes = {}

local haveVoted = {}

net.Receive("fw.sendVoteResponse", function(len, client)
	local index = net.ReadInt(32)
	local decision = net.ReadString()

	--assign it!
	local vote = ndoc.table.fwVotes[index]
	if (not vote) then
		client:FWChatPrintError("This vote may no longer exist!")
		return
	end

	local isInPool = false
	for k,v in ndoc.ipairs(vote.players) do
		if (v == client) then
			isInPool = true
		end
	end

	if (not isInPool) then
		client:FWChatPrintError('Okay mf you cant do this. tryna juke the system. fite me')
		client:Kill()
		return
	end

	haveVoted[index] = haveVoted[index] or {}

	if (haveVoted[index][client]) then
		client:FWChatPrintError("You have already voted!")
		return
	end

	--record it!
	if (decision == vote.yesText) then
		ndoc.table.fwVotes[index].yes = ndoc.table.fwVotes[index].yes + 1
	else
		ndoc.table.fwVotes[index].no  = ndoc.table.fwVotes[index].no  + 1
	end

	--cache it!
	haveVoted[index][client] = decision
end)

function fw.vote.getVoteStatus(index)
	local yes = 0
	local no  = 0

	local yesText = ndoc.table.fwVotes[index].yesText
	local noText  = ndoc.table.fwVotes[index].noText
	local yes     = ndoc.table.fwVotes[index].yes
	local no      = ndoc.table.fwVotes[index].no

	return yes > no, {yesVotes = yes, noVotes = no, totalVotes = votes}
end

function fw.vote.createNew(vTitle, vDesc, vPlayers, vCallback, vYText, vNText, vote_len)
	assert(vCallback, "Callback function missing!")
	assert(istable(vPlayers), "Players passed must be a table!")

	--localize a version for the timer!!!! DUH ME
	local count = vCount

	local syncTable = {
		index = count,
		title = vTitle,
		desc = vDesc,
		yesText = vYText or "Yes",
		noText = nYText or "No",
		voteLength = vote_len or fw.vote_defLen,
		yes = 0,
		players = vPlayers,
		no = 0
	}

	timer.Create("vote_"..count, vote_len or fw.vote_defLen, 1, function()
		local decision, vote_tbl = fw.vote.getVoteStatus(count)

		--clear the memory up
		ndoc.table.fwVotes[count] = nil
		haveVoted[count] = nil

		vCallback(decision, syncTable, vote_tbl)
	end)

	ndoc.table.fwVotes[count] = syncTable

	vCount = vCount + 1
end
