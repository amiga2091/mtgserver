reptilian_life_stealer = Creature:new {
	objectName = "@mob/creature_names:reptilian_life_stealer",
	socialGroup = "reptilian_flier",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 125,
	chanceHit = 3.25,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 11859,
	baseHAM = 34000,
	baseHAMmax = 42000,
	armor = 2,
	resists = {0,125,105,200,200,-1,0,0,-1},
	meatType = "meat_avian",
	meatAmount = 135,
	hideType = "hide_leathery",
	hideAmount = 90,
	boneType = "bone_avian",
	boneAmount = 85,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/reptilian_flier_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.5,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"strongpoison",""}, {"blindattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(reptilian_life_stealer, "reptilian_life_stealer")
