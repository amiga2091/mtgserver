stoos_stormtrooper_squad_leader = Creature:new {
  objectName = "@mob/creature_names:stormtrooper_squad_leader",
  randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	mobType = MOB_NPC,
  socialGroup = "imperial",
  faction = "imperial",
  level = 27,
  chanceHit = 0.37,
  damageMin = 260,
  damageMax = 270,
  baseXp = 2822,
  baseHAM = 8100,
  baseHAMmax = 9900,
  armor = 0,
  resists = {20,20,20,-1,30,-1,30,-1,-1},
  meatType = "",
  meatAmount = 0,
  hideType = "",
  hideAmount = 0,
  boneType = "",
  boneAmount = 0,
  milk = 0,
  tamingChance = 0,
  ferocity = 0,
  pvpBitmask = NONE,
  creatureBitmask = NONE,
  optionsBitmask = AIENABLED + CONVERSABLE,
  diet = HERBIVORE,

  templates = {"object/mobile/dressed_stormtrooper_squad_leader_white_white.iff"},
  lootGroups = {},
  primaryWeapon = "stormtrooper_weapons",
	secondaryWeapon = "unarmed",
  conversationTemplate = "stoos_olko_mission_target_convotemplate",
  
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster,carbineermaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(stoos_stormtrooper_squad_leader, "stoos_stormtrooper_squad_leader")
