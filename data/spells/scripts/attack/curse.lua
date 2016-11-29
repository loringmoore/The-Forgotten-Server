local combat = {}
for i = 0, 999 do
	combat[i] = createCombatObject()
	setCombatParam(combat[i], COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
	setCombatParam(combat[i], COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
	setCombatParam(combat[i], COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
	setCombatParam(combat[i], COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)
	
	local condition = createConditionObject(CONDITION_CURSED)
	setConditionParam(condition, CONDITION_PARAM_DELAYED, true)
	addDamageCondition(condition, 10, 2000, -i*1.15)
	setCombatCondition(combat[i], condition)
end

function onCastSpell(cid, var)
	return doCombat(cid, combat[getPlayerMagLevel(cid)], var)
end