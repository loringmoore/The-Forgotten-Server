local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)

local condition = Condition(CONDITION_MANASHIELD)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)

local area = createCombatArea(AREA_CROSS6X6)
combat:setArea(area)
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
