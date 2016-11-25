local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local condition = Condition(CONDITION_MUTED)
condition:setParameter(CONDITION_PARAM_TICKS, 10000)

local area = createCombatArea(AREA_CROSS5X5)
combat:setArea(area)
combat:setCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
