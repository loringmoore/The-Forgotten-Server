local combat = createCombatObject()
	setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_TELEPORT)

local area = createCombatArea(AREA_WALL3X1)
setCombatArea(combat, area)


function onTargetTile(cid, pos)
	local creature = doSummonCreature("Animated Corpse", pos)
		doConvinceCreature(cid, creature)
			doSendMagicEffect(pos, CONST_ME_POFF)
end
setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end