local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.2, -29, -1.5, 0)

local area = createCombatArea(AREA_WATERWAVE)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end