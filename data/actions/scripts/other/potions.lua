local ultimateHealthPot = 8473
local greatHealthPot = 7591
local greatManaPot = 7590
local greatSpiritPot = 8472
local strongHealthPot = 7588
local strongManaPot = 7589
local healthPot = 7618
local manaPot = 7620
local smallHealthPot = 8704
local antidotePot = 8474
local greatEmptyPot = 7635
local strongEmptyPot = 7634
local emptyPot = 7636

local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)

local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 100))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	if itemEx.itemid ~= 1 or itemEx.type ~= THING_TYPE_PLAYER then
		return true
	end

	local player = Player(cid)
	if player:getCondition(CONDITION_EXHAUST_HEAL) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
		return true
	end

	if item.itemid == antidotePot then
		if not doCombat(cid, antidote, numberToVariant(cid)) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(emptyPot, 1)
	elseif item.itemid == smallHealthPot then
		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 60, 90, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(emptyPot, 1)
	elseif item.itemid == healthPot then
		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 125, 175, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(emptyPot, 1)
	elseif item.itemid == manaPot then
		if not doTargetCombatMana(0, cid, 75, 125, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(emptyPot, 1)
	elseif item.itemid == strongHealthPot then
		if(not isInArray({3,4,7,8}, player:getVocation():getId()) or player:getLevel() < 50) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by paladins and knights of level 50 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 250, 350, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(strongEmptyPot, 1)
	elseif item.itemid == strongManaPot then
		if(not isInArray({1,2,3,5,6,7}, player:getVocation():getId()) or player:getLevel() < 50) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by sorcerers, druids and paladins of level 50 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatMana(0, cid, 115, 185, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(strongEmptyPot, 1)
	elseif item.itemid == greatSpiritPot then
		if(not isInArray({3, 7}, player:getVocation():getId()) or (player:getLevel() < 80)) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by paladins of level 80 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 250, 350, CONST_ME_MAGIC_BLUE) or not doTargetCombatMana(0, cid, 100, 200, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(greatEmptyPot, 1)
	elseif item.itemid == greatHealthPot then
		if(not isInArray({4, 8}, player:getVocation():getId()) or player:getLevel() < 80) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by knights of level 80 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 425, 575, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(greatEmptyPot, 1)
	elseif item.itemid == greatManaPot then
		if(not isInArray({1,2,5,6}, player:getVocation():getId()) or player:getLevel() < 80) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by sorcerers and druids of level 80 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatMana(0, cid, 150, 250, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(greatEmptyPot, 1)
	elseif item.itemid == ultimateHealthPot then
		if(not isInArray({4, 8}, player:getVocation():getId()) or player:getLevel() < 130) and not(player:getGroup():getId() >= 2) then
			player:say("This potion can only be consumed by knights of level 130 or higher.", TALKTYPE_MONSTER_SAY)
			return true
		end

		if not doTargetCombatHealth(0, cid, COMBAT_HEALING, 650, 850, CONST_ME_MAGIC_BLUE) then
			return false
		end
		player:addCondition(exhaust)
		player:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		Item(item.uid):remove(1)
		player:addItem(greatEmptyPot, 1)
	end

	return true
end
