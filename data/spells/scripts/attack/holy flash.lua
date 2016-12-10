local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREWORK_YELLOW)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)

local condition = Condition(CONDITION_DAZZLED)
condition:setTicks(20000)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)

local function CastSpell(cid, var)
    local player = Player(cid)
    local level = player:getLevel()
    local maglevel = player:getMagicLevel()
    min = -((level / 5) + (maglevel * 0.7) + 5)
    max = -((level / 5) + (maglevel * 0.8) + 7)
    condition:setParameter(CONDITION_PARAM_PERIODICDAMAGE, math.random(min,max))
    combat:setCondition(condition)
	return true
    end
   
function onCastSpell(creature, var)
    CastSpell(creature:getId(), var)
    return combat:execute(creature, var)
end