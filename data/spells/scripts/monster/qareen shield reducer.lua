local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)


local area = createCombatArea({
	{1, 1, 1},
	{1, 1, 1},
	{0, 1, 0},
	{0, 1, 0},
	{0, 3, 0},
})
combat:setArea(area)
combat:setCondition(condition)

function onGetFormulaValues(cid)
    min = -(100)
    max = -(200)
    return min, max
end

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
