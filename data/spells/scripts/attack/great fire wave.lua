local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)

local area = createCombatArea(AREA_SQUAREWAVE6)
setCombatArea(combat, area)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5) + (maglevel * 5.5) + 20
	local max = (level / 5) + (maglevel * 8.6) + 48
	return -min, -max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
