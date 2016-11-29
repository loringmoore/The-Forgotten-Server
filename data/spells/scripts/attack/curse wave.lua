local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BLACKSMOKE)

local area = createCombatArea(AREA_WAVE2)
combat:setArea(area)

local condition = Condition(CONDITION_CURSED)
condition:setTicks(40000)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 1300)

function onGetFormulaValues(cid, level, maglevel)
    min = -((level / 5) + (maglevel * 4) + 7)
    max = -((level / 5) + (maglevel * 4.5) + 9)
    return min, max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function CastSpell(cid, var)
    local player = Player(cid)
    local level = player:getLevel()
    local maglevel = player:getMagicLevel()
    min = -((level / 5) + (maglevel * 0.8) + 5)
    max = -((level / 5) + (maglevel * 0.9) + 7)
    condition:setParameter(CONDITION_PARAM_PERIODICDAMAGE, math.random(min,max))
    combat:setCondition(condition)
    end
   
function onCastSpell(creature, var)
    CastSpell(creature:getId(), var)
    return combat:execute(creature, var)
end