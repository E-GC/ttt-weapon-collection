include( "autorun/server/create_convars.lua" )

if ( fuzzik_disable_famas == "0" ) then -- Disable convar start

AddCSLuaFile()

if CLIENT then
   SWEP.PrintName = "FAMAS"
   SWEP.Slot = 2
   SWEP.Icon = "vgui/ttt/icon_famas"
   SWEP.IconLetter = "t"
end

SWEP.Base = "weapon_tttbase"
SWEP.HoldType = "ar2"

SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.Delay = 0.08
SWEP.Primary.Recoil = 0.8
SWEP.Primary.Cone = 0.025
SWEP.Primary.Damage = 17
SWEP.Primary.Automatic = true
SWEP.Primary.ClipSize = 30
SWEP.Primary.ClipMax = 60
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Sound = Sound( "Weapon_FAMAS.Single" )

SWEP.UseHands = true
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 64
SWEP.ViewModel = Model( "models/weapons/cstrike/c_rif_famas.mdl" )
SWEP.WorldModel = Model( "models/weapons/w_rif_famas.mdl" )

SWEP.IronSightsPos = Vector( -6.24, -2.757, 1.36 )

SWEP.Kind = WEAPON_HEAVY
SWEP.AutoSpawnable = true
SWEP.AmmoEnt = "item_ammo_pistol_ttt"
SWEP.InLoadoutFor = { nil }
SWEP.AllowDrop = true
SWEP.IsSilent = false
SWEP.NoSights = false

end -- Disable convar end
