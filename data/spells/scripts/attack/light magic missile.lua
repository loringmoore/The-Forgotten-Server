local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONHIT)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EXPLOSION)

function onGetFormulaValues(cid, level, maglevel)
	min = -((level / 5) + (maglevel * 0.4) + 3)
	max = -((level / 5) + (maglevel * 0.8) + 5)
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var, isHotkey)
	return doCombat(cid, combat, var)
end
