SWEP.PrintName = "Faction Wars Base Weapon"
SWEP.Base = "weapon_base"
SWEP.Slot = 1

SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModel = "models/weapons/v_rif_ak47.mdl"
SWEP.ViewModelFlip = true
SWEP.HoldType = "AR2"
SWEP.Scoped = false

SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 60
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 10
SWEP.Primary.RPM = 600
SWEP.Primary.Sound = Sound("Weapon_AK47.Single")
SWEP.Primary.BaseSpread = 0.0125
SWEP.Primary.BaseRecoil = 0.0075
SWEP.Primary.MaxRecoil = 0.15
SWEP.Primary.Shotgun = true
SWEP.Primary.Bullets = 1

SWEP.Secondary.Ammo = "none"

SWEP.EmptySound = Sound("Weapon_Pistol.Empty")
SWEP.ReloadSound = Sound("Weapon_AK47.Reload")

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 0, "CurrentRecoil")
	self:NetworkVar("Float", 1, "LastFireTime")
	self:NetworkVar("Bool", 2, "Scoped")
	self:NetworkVar("Bool", 3, "Reloading")
	self:NetworkVar("Float", 4, "SequenceTime")
	self:NetworkVar("Bool", 5, "ReloadState")
end

function SWEP:PrimaryAttack()
	self:SetReloading(false)
	self:SetReloadState(false)
	self:SetNextPrimaryFire(CurTime() + 60 / self.Primary.RPM)

	if self:Clip1() <= 0 then self:EmitSound(self.EmptySound) self:SendWeaponAnim(ACT_VM_DRYFIRE) return end

	local recoilMult = 1
	local sprayMult = 1

	local vel = math.abs(self.Owner:GetVelocity():Dot(self.Owner:GetForward()))
	sprayMult = sprayMult + (vel / 250)

	if self.Owner:KeyDown(IN_DUCK) then -- Croutching decreases recoil, moving increases spread.
		recoilMult = 0.5
	end

	if self:GetScoped() then
		recoilMult = recoilMult / 2
		sprayMult = sprayMult / 2
	end

	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	self:EmitSound(self.Primary.Sound)

	if IsFirstTimePredicted() then
		self:FireBullets({
			Attacker = self:GetOwner(),
			Damage = self.Primary.Damage,
			Force = 10,
			AmmoType = self.Primary.Ammo,
			Dir = self:GetOwner():GetAimVector() + Vector(0, 0, math.Clamp(self:GetCurrentRecoil(), 0, self.Primary.MaxRecoil * recoilMult)),
			Src = self:GetOwner():GetShootPos(),
			Spread = Vector(self.Primary.BaseSpread * sprayMult, self.Primary.BaseSpread * sprayMult, 0),
			Num = (self.Primary.Shotgun and self.Primary.Bullets or 1)
		})
		self:SetLastFireTime(CurTime())
		self:SetCurrentRecoil(self:GetCurrentRecoil() + self.Primary.BaseRecoil * recoilMult)
	end

	self.Owner:ViewPunch(Angle(-self:GetCurrentRecoil() * 5, 0, 0))
	self:SetClip1(self:Clip1() - 1)
end

function SWEP:SecondaryAttack()
	self:SetNextSecondaryFire(CurTime() + 0.1)

	if self.Scoped then
		self:SetScope(not self:GetScoped())
	end
end

function SWEP:SetScope(scoped)
	if scoped then
		self.Owner:SetFOV(20, 0.3)
		self:SetNextPrimaryFire(CurTime() + 0.3)
	else
		self.Owner:SetFOV(0, 0.1)
		self:SetNextPrimaryFire(CurTime() + 0.1)
	end
	self:EmitSound(Sound("Default.Zoom"))
	self:SetScoped(scoped)
end

function SWEP:Reload()
	if not self.Primary.Shotgun then
		self:EmitSound(self.ReloadSound)

		if self:GetScoped() then
			self:SetScope(false)
		end

		self:DefaultReload(ACT_VM_RELOAD)
	else
		if self:Ammo1() > 0 and self:Clip1() < self:GetMaxClip1() and not self:GetReloading() then
			self:SetReloading(true)
		end
	end
end

function SWEP:ShotgunReload()
	local curAmmo = self:Clip1()
	if curAmmo < self:GetMaxClip1() and self:GetSequenceTime() < CurTime() and self:Ammo1() > 0 then
		if not self:GetReloadState() then
			self:SetReloadState(true)
			self:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
			self:SetSequenceTime(CurTime() + self:SequenceDuration())
			return
		end

		self:SendWeaponAnim(ACT_VM_RELOAD)
		self:SetSequenceTime(CurTime() + self:SequenceDuration())
		self:EmitSound(self.ReloadSound)
		self:SetClip1(curAmmo + 1)
		self.Owner:SetAmmo(self:Ammo1() - 1, self:GetPrimaryAmmoType())
	elseif curAmmo >= self:GetMaxClip1() or self:Ammo1() <= 0 and self:GetSequenceTime() < CurTime() then
		self:SetReloading(false)
		self:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
		self:SetNextPrimaryFire(CurTime() + self:SequenceDuration())
		self:SetReloadState(false)
	end
end

function SWEP:Initialize()
	self:SendWeaponAnim(ACT_VM_IDLE)
	self.LastFireTime = 0
	self.CurrentRecoil = 0
	self:SetReloading(false)
end

function SWEP:Think()
	if self:GetLastFireTime() + (60 / self.Primary.RPM) * 2.1 <= CurTime() + (60 / self.Primary.RPM) then
		self:SetCurrentRecoil(0)
	end

	if self:GetReloading() then self:ShotgunReload() end
end

function SWEP:Deploy()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNextPrimaryFire(CurTime() + 1)
	self:SetHoldType(self.HoldType)
end