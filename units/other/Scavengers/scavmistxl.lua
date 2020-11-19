return {
	scavmistxl = {
		acceleration = 0.207,
		autoheal = 15,
		brakerate = 0.6486,
		buildcostenergy = 3400,
		buildcostmetal = 175,
		buildpic = "scavengers/SCAVMIST.PNG",
		buildtime = 5090,
		canmove = true,
		category = "ALL BOT MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "64 24 64",
		collisionvolumetype = "CylY",
		--corpse = "DEAD",
		description = "Heavy Scavenger Mist",
		explodeas = "mistexploxl",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		hidedamage = true,
		idleautoheal = 5,
		idletime = 600,
		mass = 10,
		maxdamage = 1150,
		maxvelocity = 2.1,
		maxwaterdepth = 0,
		movementclass = "SCAVMIST",
		name = "Heavy Mist",
		nochasecategory = "ALL",
		objectname = "SimpleFlare.s3o",
		script = "scavs/SCAVMIST.cob",
		seismicsignature = 0,
		selfdestructas = "mistexploxl",
		selfdestructcountdown = 0,
		sightdistance = 550,
		stealth = true,
		strafetoattack = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.5,
		turnrate = 1200,
		unitname = "scavmistxl",
		customparams = {
			model_author = "IceXuick",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.125,
			subfolder = "scavengers",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:scavmistxl",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count1",
			},
			ok = {
				[1] = "spider2",
			},
			select = {
				[1] = "spider",
			},
		},
		weapondefs = {
			lightningsurgexl = {
				areaofeffect = 10,
				avoidfeature = false,
				beamttl = 0,
				burst = 8,
				burstrate = 0.03333,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:lightning_storm_scav",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0,
				laserFlareSize = 0,
				name = "Heavy Electrical Scavenger Surge",
				noselfdamage = true,
				range = 200,
				reloadtime = 2.1,
				rgbcolor = "0 0 0",
				soundhit = "xplomed3",
				soundhitwet = "sizzle",
				soundstart = "lghthvy1",
				soundtrigger = true,
				targetmoveerror = 0.15,
				thickness = 0,
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 400,
				customparams = {
					expl_light_color = "0.7 0.3 1",
					light_color = "0.0 0.0 0",
				},
				damage = {
					bombers = 13,
					default = 55,
					fighters = 13,
					subs = 1,
					vtol = 13,
				},
			},
		},
		weapons = {
			[1] = {
				def = "lightningsurgexl",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
