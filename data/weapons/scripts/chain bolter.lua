local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_BOLT)


function onGetFormulaValues(cid, skill, attack, factor)
	local skillTotal, levelTotal = skill * attack, getPlayerLevel(cid) / 5
	return -(((skillTotal * 0.04) + 31) + (levelTotal)), -(((skillTotal * 0.08) + 45) + (levelTotal))
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function addCombat(cid, combat, var)
    local player = Player(cid)
    if not player then
        return false
    end
   
    if player:getTarget() == nil then
        return false
    end
   
    doCombat(player, combat, var)
end

function onUseWeapon(player, var)
    addEvent(addCombat, 1000, player, combat, var)
    return doCombat(player, combat, var)
end