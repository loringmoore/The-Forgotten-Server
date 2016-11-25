local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BLACKSPARK)

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 4000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 95)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
