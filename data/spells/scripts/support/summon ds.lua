 local maxSummons = 5
    local summonName = "Demon Skeleton"

    function onCastSpell(player, var)
        local summonCount, playerPosition = #player:getSummons(), player:getPosition()
        if summonCount >= maxSummons then
            player:sendCancelMessage('You cannot summon additional creatures.')
            playerPosition:sendMagicEffect(CONST_ME_POFF)
            return false
        end

        for i = 1, maxSummons - summonCount do
            local summonedCreature = Game.createMonster(summonName, playerPosition)
            if summonedCreature then
                summonedCreature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
                summonedCreature:setMaster(player)
            end
        end
        return true
    end