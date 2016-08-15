if SERVER then
	AddCSLuaFile()
end

-- create the exported table
fw.vote = fw.vote or {}
fw.vote_defLen = 30 --seconds

-- load internal dependencies
fw.dep(SHARED, "notif")
fw.dep(SHARED, "hook")

-- load core vote system
fw.include_sv "vote_sv.lua"
fw.include_cl "vote_cl.lua"
