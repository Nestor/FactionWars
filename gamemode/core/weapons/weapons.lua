fw.weapons.createGun("AK-47", {
	WorldModel = "models/weapons/w_rif_ak47.mdl",
	ViewModel = "models/weapons/v_rif_ak47.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_AK47.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 30,
		DefaultClip = 60,
		Automatic = true,
		Damage = 27,
		RPM = 600,
		Sound = Sound("Weapon_AK47.Single"),
		BaseSpread = 0.02,
		BaseRecoil = 0.0075,
		MaxRecoil = 0.15,
	},
}, "fw_gun_ak47")

fw.weapons.createGun("AWP", {
	WorldModel = "models/weapons/w_snip_awp.mdl",
	ViewModel = "models/weapons/v_snip_awp.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	Slot = fw.weapons.SLOT_RIFLE,
	Scoped = true,
	ReloadSound = Sound("Weapon_AWP.Reload"),
	Primary = {
		Ammo = "AR2",
		ClipSize = 10,
		DefaultClip = 20,
		Automatic = false,
		Damage = 100,
		RPM = 41,
		Sound = Sound("Weapon_AWP.Single"),
		BaseSpread = 0,
		BaseRecoil = 0,
		MaxRecoil = 0,
	},
}, "fw_gun_awp")

fw.weapons.createGun("M3 Super 90", {
	WorldModel = "models/weapons/w_shot_m3super90.mdl",
	ViewModel = "models/weapons/v_shot_m3super90.mdl",
	ViewModelFlip = true,
	HoldType = "shotgun",
	Slot = fw.weapons.SLOT_SHOTGUN,
	ReloadSound = Sound("Weapon_M3.Reload"),
	Primary = {
		Ammo = "Buckshot",
		ClipSize = 8,
		DefaultClip = 16,
		Automatic = false,
		Damage = 14,
		RPM = 68,
		Sound = Sound("Weapon_M3.Single"),
		BaseSpread = 0.125,
		BaseRecoil = 0.05,
		MaxRecoil = 0.05,
		Bullets = 9,
		Shotgun = true,
	},
}, "fw_gun_m3")

fw.weapons.createGun("P90", {
	WorldModel = "models/weapons/w_smg_p90.mdl",
	ViewModel = "models/weapons/v_smg_p90.mdl",
	ViewModelFlip = true,
	HoldType = "smg",
	Slot = fw.weapons.SLOT_SMG,
	ReloadSound = Sound("Weapon_P90.Reload"),
	Primary = {
		Ammo = "SMG1",
		ClipSize = 50,
		DefaultClip = 100,
		Automatic = true,
		Damage = 14,
		RPM = 857,
		Sound = Sound("Weapon_P90.Single"),
		BaseSpread = 0.0175,
		BaseRecoil = 0.01,
		MaxRecoil = 0.25,
	},
}, "fw_gun_p90")

fw.weapons.createGun("Five-Seven", {
	WorldModel = "models/weapons/w_pist_fiveseven.mdl",
	ViewModel = "models/weapons/v_pist_fiveseven.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	Slot = fw.weapons.SLOT_PISTOL,
	ReloadSound = Sound("Weapon_Fiveseven.Reload"),
	Primary = {
		Ammo = "pistol",
		ClipSize = 20,
		DefaultClip = 40,
		Automatic = false,
		Damage = 30,
		RPM = 400,
		Sound = Sound("Weapon_Fiveseven.Single"),
		BaseSpread = 0.02,
		BaseRecoil = 0.005,
		MaxRecoil = 0.1,
	},
}, "fw_gun_fiveseven")

fw.weapons.createGun("Desert Eagle", {
	WorldModel = "models/weapons/w_pist_deagle.mdl",
	ViewModel = "models/weapons/v_pist_deagle.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_Deagle.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 7,
		DefaultClip = 35,
		Automatic = false,
		Damage = 52,
		RPM = 100,
		Sound = Sound("Weapon_Deagle.Single"),
		BaseSpread = 0.04,
		BaseRecoil = 0.0175,
		MaxRecoil = 0.2,
	},
}, "fw_gun_deagle")

fw.weapons.createGun("Dualies", {
	WorldModel = "models/weapons/w_pist_elite.mdl",
	ViewModel = "models/weapons/v_pist_elite.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_Elite.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 20,
		DefaultClip = 100,
		Automatic = false,
		Damage = 23,
		RPM = 150,
		Sound = Sound("Weapon_Elite.Single"),
		BaseSpread = 0.04,
		BaseRecoil = 0.0075,
		MaxRecoil = 0.12,
	},
}, "fw_gun_dualies")

fw.weapons.createGun("Dualie", {
	WorldModel = "models/weapons/w_pist_elite_single.mdl",
	ViewModel = "models/weapons/v_pist_elite_single.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_Elite.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 10,
		DefaultClip = 50,
		Automatic = false,
		Damage = 23,
		RPM = 150,
		Sound = Sound("Weapon_Elite.Single"),
		BaseSpread = 0.04,
		BaseRecoil = 0.0075,
		MaxRecoil = 0.12,
	},
}, "fw_gun_dualie")

fw.weapons.createGun("Glock", {
	WorldModel = "models/weapons/w_pist_glock18.mdl",
	ViewModel = "models/weapons/v_pist_glock18.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_Glock.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 18,
		DefaultClip = 80,
		Automatic = false,
		Damage = 17,
		RPM = 200,
		Sound = Sound("Weapon_Glock.Single"),
		BaseSpread = 0.01,
		BaseRecoil = 0.0075,
		MaxRecoil = 0.08,
	},
}, "fw_gun_glock")

fw.weapons.createGun("P228", {
	WorldModel = "models/weapons/w_pist_p228.mdl",
	ViewModel = "models/weapons/v_pist_p228.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_P228.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 12,
		DefaultClip = 60,
		Automatic = false,
		Damage = 21,
		RPM = 230,
		Sound = Sound("Weapon_P228.Single"),
		BaseSpread = 0.015,
		BaseRecoil = 0.0055,
		MaxRecoil = 0.1,
	},
}, "fw_gun_p228")

fw.weapons.createGun("USP", {
	WorldModel = "models/weapons/w_pist_usp.mdl",
	ViewModel = "models/weapons/v_pist_usp.mdl",
	ViewModelFlip = true,
	HoldType = "pistol",
	ReloadSound = Sound("Weapon_USP.Reload"),
	Slot = fw.weapons.SLOT_PISTOL,
	Primary = {
		Ammo = "pistol",
		ClipSize = 10,
		DefaultClip = 50,
		Automatic = false,
		Damage = 27,
		RPM = 130,
		Sound = Sound("Weapon_USP.Single"),
		BaseSpread = 0.005,
		BaseRecoil = 0.0035,
		MaxRecoil = 0.04,
	},
}, "fw_gun_usp")

fw.weapons.createGun("AUG", {
	WorldModel = "models/weapons/w_rif_aug.mdl",
	ViewModel = "models/weapons/v_rif_aug.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_AUG.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 30,
		DefaultClip = 180,
		Automatic = true,
		Damage = 27,
		RPM = 600,
		Sound = Sound("Weapon_AUG.Single"),
		BaseSpread = 0.015,
		BaseRecoil = 0.045,
		MaxRecoil = 0.1,
	},
}, "fw_gun_aug")

fw.weapons.createGun("Famas", {
	WorldModel = "models/weapons/w_rif_famas.mdl",
	ViewModel = "models/weapons/w_rif_famas.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_FAMAS.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 25,
		DefaultClip = 125,
		Automatic = true,
		Damage = 23,
		RPM = 750,
		Sound = Sound("Weapon_FAMAS.Single"),
		BaseSpread = 0.0175,
		BaseRecoil = 0.045,
		MaxRecoil = 0.1,
	},
}, "fw_gun_famas")

fw.weapons.createGun("Galil", {
	WorldModel = "models/weapons/w_rif_galil.mdl",
	ViewModel = "models/weapons/v_rif_galil.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_Galil.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 35,
		DefaultClip = 175,
		Automatic = true,
		Damage = 20,
		RPM = 650,
		Sound = Sound("Weapon_Galil.Single"),
		BaseSpread = 0.015,
		BaseRecoil = 0.065,
		MaxRecoil = 0.13,
	},
}, "fw_gun_galil")

fw.weapons.createGun("M4A1", {
	WorldModel = "models/weapons/w_rif_m4a1.mdl",
	ViewModel = "models/weapons/v_rif_m4a1.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_M4A1.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 20,
		DefaultClip = 100,
		Automatic = true,
		Damage = 27,
		RPM = 625,
		Sound = Sound("Weapon_M4A1.Single"),
		BaseSpread = 0.07,
		BaseRecoil = 0.035,
		MaxRecoil = 0.15,
	},
}, "fw_gun_m4a1")

fw.weapons.createGun("SG552", {
	WorldModel = "models/weapons/w_rif_sg552.mdl",
	ViewModel = "models/weapons/v_rif_sg552.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	ReloadSound = Sound("Weapon_SG552.Reload"),
	Slot = fw.weapons.SLOT_RIFLE,
	Primary = {
		Ammo = "AR2",
		ClipSize = 25,
		DefaultClip = 125,
		Automatic = true,
		Damage = 22,
		RPM = 600,
		Sound = Sound("Weapon_SG552.Single"),
		BaseSpread = 0.01,
		BaseRecoil = 0.065,
		MaxRecoil = 0.1,
	},
}, "fw_gun_sg552")

fw.weapons.createGun("XM-1014", {
	WorldModel = "models/weapons/w_shot_xm1014.mdl",
	ViewModel = "models/weapons/v_shot_xm1014.mdl",
	ViewModelFlip = true,
	HoldType = "shotgun",
	Slot = fw.weapons.SLOT_SHOTGUN,
	ReloadSound = Sound("Weapon_XM1014.Reload"),
	Primary = {
		Ammo = "Buckshot",
		ClipSize = 8,
		DefaultClip = 24,
		Automatic = true,
		Damage = 11,
		RPM = 108,
		Sound = Sound("Weapon_XM1014.Single"),
		BaseSpread = 0.125,
		BaseRecoil = 0.05,
		MaxRecoil = 0.05,
		Bullets = 12,
		Shotgun = true,
	},
}, "fw_gun_xm1014")

fw.weapons.createGun("Mac 10", {
	WorldModel = "models/weapons/w_smg_mac10.mdl",
	ViewModel = "models/weapons/v_smg_mac10.mdl",
	ViewModelFlip = true,
	HoldType = "smg",
	Slot = fw.weapons.SLOT_SMG,
	ReloadSound = Sound("Weapon_Mac10.Reload"),
	Primary = {
		Ammo = "SMG1",
		ClipSize = 30,
		DefaultClip = 120,
		Automatic = true,
		Damage = 12,
		RPM = 957,
		Sound = Sound("Weapon_Mac10.Single"),
		BaseSpread = 0.02,
		BaseRecoil = 0.01,
		MaxRecoil = 0.35,
	},
}, "fw_gun_mac10")

fw.weapons.createGun("MP5", {
	WorldModel = "models/weapons/w_smg_mp5.mdl",
	ViewModel = "models/weapons/v_smg_mp5.mdl",
	ViewModelFlip = true,
	HoldType = "smg",
	Slot = fw.weapons.SLOT_SMG,
	ReloadSound = Sound("Weapon_MP5.Reload"),
	Primary = {
		Ammo = "SMG1",
		ClipSize = 30,
		DefaultClip = 120,
		Automatic = true,
		Damage = 17,
		RPM = 800,
		Sound = Sound("Weapon_MP5.Single"),
		BaseSpread = 0.015,
		BaseRecoil = 0.05,
		MaxRecoil = 0.2,
	},
}, "fw_gun_mp5")

fw.weapons.createGun("TMP", {
	WorldModel = "models/weapons/w_smg_tmp.mdl",
	ViewModel = "models/weapons/v_smg_tmp.mdl",
	ViewModelFlip = true,
	HoldType = "smg",
	Slot = fw.weapons.SLOT_SMG,
	ReloadSound = Sound("Weapon_TMP.Reload"),
	Primary = {
		Ammo = "SMG1",
		ClipSize = 30,
		DefaultClip = 120,
		Automatic = true,
		Damage = 14,
		RPM = 1000,
		Sound = Sound("Weapon_TMP.Single"),
		BaseSpread = 0.025,
		BaseRecoil = 0.05,
		MaxRecoil = 0.25,
	},
}, "fw_gun_tmp")

fw.weapons.createGun("UMP", {
	WorldModel = "models/weapons/w_smg_ump45.mdl",
	ViewModel = "models/weapons/v_smg_ump45.mdl",
	ViewModelFlip = true,
	HoldType = "smg",
	Slot = fw.weapons.SLOT_SMG,
	ReloadSound = Sound("Weapon_ump45.Reload"),
	Primary = {
		Ammo = "SMG1",
		ClipSize = 30,
		DefaultClip = 120,
		Automatic = true,
		Damage = 17,
		RPM = 720,
		Sound = Sound("Weapon_ump45.Single"),
		BaseSpread = 0.015,
		BaseRecoil = 0.03,
		MaxRecoil = 0.25,
	},
}, "fw_gun_ump")

fw.weapons.createGun("Scout", {
	WorldModel = "models/weapons/w_snip_scout.mdl",
	ViewModel = "models/weapons/v_snip_scout.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	Slot = fw.weapons.SLOT_RIFLE,
	Scoped = true,
	ReloadSound = Sound("Weapon_Scout.Reload"),
	Primary = {
		Ammo = "AR2",
		ClipSize = 12,
		DefaultClip = 36,
		Automatic = false,
		Damage = 80,
		RPM = 71,
		Sound = Sound("Weapon_Scout.Single"),
		BaseSpread = 0,
		BaseRecoil = 0,
		MaxRecoil = 0,
	},
}, "fw_gun_scout")

fw.weapons.createGun("G3SG1", {
	WorldModel = "models/weapons/w_snip_g3sg1.mdl",
	ViewModel = "models/weapons/v_snip_g3sg1.mdl",
	ViewModelFlip = true,
	HoldType = "AR2",
	Slot = fw.weapons.SLOT_RIFLE,
	Scoped = true,
	ReloadSound = Sound("Weapon_G3SG1.Reload"),
	Primary = {
		Ammo = "AR2",
		ClipSize = 10,
		DefaultClip = 30,
		Automatic = true,
		Damage = 45,
		RPM = 61,
		Sound = Sound("Weapon_G3SG1.Single"),
		BaseSpread = 0,
		BaseRecoil = 0.1,
		MaxRecoil = 0.3,
	},
}, "fw_gun_g3sg1")