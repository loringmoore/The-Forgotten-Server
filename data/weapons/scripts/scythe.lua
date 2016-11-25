local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_LIFEDRAIN)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_DRAWBLOOD)

function onGetFormulaValues(cid, level, maglevel)
	min = -((level / 1) + (maglevel * 1.1) + 1)
	max = -((level / 1) + (maglevel * 1.3) + 5)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onUseWeapon(player, var)
	return doCombat(player, combat, var)
end
