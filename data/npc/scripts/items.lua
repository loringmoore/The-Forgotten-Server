local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


--helmets
shopModule:addBuyableItem({'brass helmet'}, 2460, 120, 1, 'brass helmet')
shopModule:addBuyableItem({'chain helmet'}, 2458, 52, 1, 'chain helmet')

shopModule:addSellableItem({'bandana'}, 5917, 150, 'bandana') 
shopModule:addSellableItem({'batwing hat'}, 10016, 8000, 'batwing hat') 
shopModule:addSellableItem({'bonelord helmet'}, 3972, 7500, 'bonelord helmet') 
shopModule:addSellableItem({'brass helmet'}, 2460, 30, 'brass helmet')
shopModule:addSellableItem({'charmer tiara'}, 3971, 900, 'charmer tiara') 
shopModule:addSellableItem({'chain helmet'}, 2458, 17, 'chain helmet')
shopModule:addSellableItem({'cobra crown'}, 12630, 50000, 'cobra crown') 
shopModule:addSellableItem({'crown helmet'}, 2491, 2500, 'crown helmet')
shopModule:addSellableItem({'crusader helmet'}, 2497, 6000, 'crusader helmet') 
shopModule:addSellableItem({'dark helmet'}, 2490, 250, 'dark helmet') 
shopModule:addSellableItem({'devil helmet'}, 2462, 1000, 'devil helmet')
shopModule:addSellableItem({'feather headdress'}, 3970, 850, 'feather headdress')
shopModule:addSellableItem({'flower wreath'}, 9927, 500, 'flower wreath')
shopModule:addSellableItem({'glacier mask'}, 7902, 2500, 'glacier mask')
shopModule:addSellableItem({'helmet of the deep'}, 12541, 5000, 'helmet of the deep')
shopModule:addSellableItem({'horseman helmet'}, 3969, 280, 'horseman helmet')
shopModule:addSellableItem({'iron helmet'}, 2459, 150, 'iron helmet') 
shopModule:addSellableItem({'jade hat'}, 11368, 9000, 'jade hat')
shopModule:addSellableItem({'krimhorn helmet'}, 7461, 200, 'krimhorn helmet')
shopModule:addSellableItem({'leather helmet'}, 2461, 4, 'leather helmet')
shopModule:addSellableItem({'lightning headband'}, 7889, 2500, 'lightning headband')
shopModule:addSellableItem({'magma monocle'}, 7900, 2500, 'magma monocle')
shopModule:addSellableItem({'mystic turban'}, 2663, 150, 'mystic turban')
shopModule:addSellableItem({'pair of earmuffs'}, 7459, 1500, 'pair of earmuffs')
shopModule:addSellableItem({'ragnir helmet'}, 7462, 400, 'ragnir helmet')
shopModule:addSellableItem({'royal helmet'}, 2498, 30000, 'royal helmet')
shopModule:addSellableItem({'skull helmet'}, 5741, 40000, 'skull helmet')
shopModule:addSellableItem({'soldier helmet'}, 2481, 16, 'soldier helmet')
shopModule:addSellableItem({'steel helmet'}, 2457, 293, 'steel helmet')
shopModule:addSellableItem({'strange helmet'}, 2479, 500, 'strange helmet')
shopModule:addSellableItem({'studded helmet'}, 2482, 20, 'studded helmet')
shopModule:addSellableItem({'terra hood'}, 7903, 2500, 'terra hood')
shopModule:addSellableItem({'tribal mask'}, 3967, 250, 'tribal mask')
shopModule:addSellableItem({'viking helmet'}, 2473, 66, 'viking helmet')
shopModule:addSellableItem({'warrior helmet'}, 2475, 5000, 'warrior helmet') 
shopModule:addSellableItem({'zaoan helmet'}, 11302, 45000, 'zaoan helmet')

--armor
shopModule:addBuyableItem({'brass armor'}, 2465, 450, 1, 'brass armor')
shopModule:addBuyableItem({'cape'}, 2654, 9, 1, 'cape')
shopModule:addBuyableItem({'chain armor'}, 2464, 200, 1, 'chain armor')
shopModule:addBuyableItem({'coat'}, 2651, 8, 1, 'coat') 
shopModule:addBuyableItem({'green tunic'}, 2652, 25, 1, 'green tunic')
shopModule:addBuyableItem({'jacket'}, 2650, 12, 1, 'jacket')
shopModule:addBuyableItem({'leather armor'}, 2467, 25, 1, 'leather armor')

shopModule:addSellableItem({'belted cape'}, 8872, 500, 'belted cape')
shopModule:addSellableItem({'blue robe'}, 2656, 10000, 'blue robe')
shopModule:addSellableItem({'brass armor'}, 2465, 150, 'brass armor')
shopModule:addSellableItem({'chain armor'}, 2464, 70, 'chain armor')
shopModule:addSellableItem({'coat'}, 2651, 1, 'coat')
shopModule:addSellableItem({'crown armor'}, 2487, 12000, 'crown armor')
shopModule:addSellableItem({'crystalline armor'}, 8878, 16000, 'crystalline armor')
shopModule:addSellableItem({'dark armor'}, 2489, 400, 'dark armor')
shopModule:addSellableItem({'dragon scale mail'}, 2492, 40000, 'dragon scale mail')
shopModule:addSellableItem({'dwarven armor'}, 2503, 30000, 'dwarven armor')
shopModule:addSellableItem({'ethno coat'}, 8892, 200, 'ethno coat')
shopModule:addSellableItem({'flower dress'}, 9929, 1000, 'flower dress')
shopModule:addSellableItem({'focus cape'}, 8871, 6000, 'focus cape')
shopModule:addSellableItem({'glacier robe'}, 7897, 11000, 'glacier robe')
shopModule:addSellableItem({'golden armor'}, 2466, 20000, 'golden armor')
shopModule:addSellableItem({'hibiscus dress'}, 8873, 3000, 'hibiscus dress')
shopModule:addSellableItem({'jacket'}, 2650, 1, 'jacket')
shopModule:addSellableItem({'knight armor'}, 2476, 5000, 'knight armor')
shopModule:addSellableItem({'lavos armor'}, 8877, 16000, 'lavos armor')
shopModule:addSellableItem({'leather armor'}, 2467, 12, 'leather armor')
shopModule:addSellableItem({'leopard armor'}, 3968, 1000, 'leopard armor')
shopModule:addSellableItem({'lightning robe'}, 7898, 11000, 'lightning robe')
shopModule:addSellableItem({'magic plate armor'}, 2472, 90000, 'magic plate armor')
shopModule:addSellableItem({'magma coat'}, 7899, 11000, 'magma coat')
shopModule:addSellableItem({'mammoth fur cape'}, 7463, 6000, 'mammoth fur cape')
shopModule:addSellableItem({'noble armor'}, 2486, 900, 'noble armor')
shopModule:addSellableItem({'paladin armor'}, 8891, 15000, 'paladin armor')
shopModule:addSellableItem({'pirate shirt'}, 6095, 500, 'pirate shirt')
shopModule:addSellableItem({'plate armor'}, 2463, 400, 'plate armor')
shopModule:addSellableItem({'scale armor'}, 2483, 75, 'scale armor') 
shopModule:addSellableItem({'simple dress'}, 2657, 50, 'simple dress')
shopModule:addSellableItem({'skullcracker armor'}, 8889, 18000, 'skullcracker armor')
shopModule:addSellableItem({'spellweaver robe'}, 11355, 12000, 'spellweaver robe')
shopModule:addSellableItem({'spirit cloak'}, 8870, 350, 'spirit cloak')
shopModule:addSellableItem({'studded armor'}, 2484, 25, 'studded armor') 
shopModule:addSellableItem({'terra mantle'}, 7884, 11000, 'terra mantle')
shopModule:addSellableItem({'swamplair armor'}, 8880, 16000, 'swamplair armor')
shopModule:addSellableItem({'zaoan armor'}, 11301, 14000, 'zaoan armor')
shopModule:addSellableItem({'zaoan robe'}, 11356, 12000, 'zaoan robe')
shopModule:addSellableItem({'elite draken mail'}, 12607, 50000, 'elite draken mail') 

--legs
shopModule:addBuyableItem({'brass legs'}, 2478, 195, 1, 'brass legs')
shopModule:addBuyableItem({'chain legs'}, 2648, 80, 1, 'chain legs')
shopModule:addBuyableItem({'leather legs'}, 2649, 10, 1, 'leather legs')
shopModule:addBuyableItem({'studded legs'}, 2468, 60, 1, 'studded legs')
shopModule:addSellableItem({'bast skirt'}, 3983, 750, 'bast skirt') 
shopModule:addSellableItem({'brass legs'}, 2478, 49, 'brass legs')
shopModule:addSellableItem({'chain legs'}, 2648, 25, 'chain legs')
shopModule:addSellableItem({'crown legs'}, 2488, 12000, 'crown legs')
shopModule:addSellableItem({'glacier kilt'}, 7896, 11000, 'glacier kilt')
shopModule:addSellableItem({'golden legs'}, 2470, 30000, 'golden legs')
shopModule:addSellableItem({'knight legs'}, 2477, 5000, 'knight legs')
shopModule:addSellableItem({'leaf legs'}, 9928, 500, 'leaf legs')
shopModule:addSellableItem({'leather legs'}, 2649, 9, 'leather legs')
shopModule:addSellableItem({'lightning legs'}, 7895, 11000, 'lightning legs')
shopModule:addSellableItem({'magma legs'}, 7894, 11000, 'magma legs')
shopModule:addSellableItem({'mammoth fur shorts'}, 7464, 850, 'mammoth fur shorts')
shopModule:addSellableItem({'pirate knee breeches'}, 5918, 200, 'pirate knee breeches')
shopModule:addSellableItem({'plate legs'}, 2647, 115, 'plate legs')
shopModule:addSellableItem({'studded legs'}, 2468, 15, 'studded legs')
shopModule:addSellableItem({'terra legs'}, 7885, 11000, 'terra legs')
shopModule:addSellableItem({'zaoan legs'}, 11304, 14000, 'zaoan legs')

--boots
shopModule:addBuyableItem({'leather boots'}, 2643, 2, 1,'leather boots')

shopModule:addSellableItem({'boots of haste'}, 2195, 30000, 'boots of haste')
shopModule:addSellableItem({'coconut shoes'}, 9931, 500, 'coconut shoes')
shopModule:addSellableItem({'crocodile boots'}, 3982, 1000, 'crocodile boots')
shopModule:addSellableItem({'draken boots'}, 12646, 40000, 'draken boots')
shopModule:addSellableItem({'fur boots'}, 7457, 2000, 'fur boots')
shopModule:addSellableItem({'glacier shoes'}, 7892, 2500, 'glacier shoes')
shopModule:addSellableItem({'guardian boots'}, 11240, 35000, 'guardian boots')
shopModule:addSellableItem({'lightning boots'}, 7893, 2500, 'lightning boots')
shopModule:addSellableItem({'magma boots'}, 7891, 2500, 'magma boots')
shopModule:addSellableItem({'pirate boots'}, 5462, 3000, 'pirate boots')
shopModule:addSellableItem({'steel boots'}, 2645, 30000, 'steel boots')
shopModule:addSellableItem({'terra boots'}, 7886, 2500, 'terra boots')
shopModule:addSellableItem({'zaoan shoes'}, 11303, 5000, 'zaoan shoes')


--shields
shopModule:addBuyableItem({'brass shield'}, 2511, 65, 1, 'brass shield')
shopModule:addBuyableItem({'dwarven shield'}, 2525, 500, 1, 'dwarven shield')
shopModule:addBuyableItem({'plate shield'}, 2510, 125, 1, 'plate shield') 
shopModule:addBuyableItem({'steel shield'}, 2509, 240, 1, 'steel shield')
shopModule:addBuyableItem({'studded shield'}, 2526, 50, 1, 'studded shield')
shopModule:addBuyableItem({'viking shield'}, 2531, 260, 1, 'viking shield')
shopModule:addBuyableItem({'wooden shield'}, 2512, 15, 1, 'wooden shield')
shopModule:addSellableItem({'ancient shield'}, 2532, 900, 'ancient shield')
shopModule:addSellableItem({'battle shield'}, 2513, 95, 'battle shield')
shopModule:addSellableItem({'black shield'}, 2529, 800, 'black shield')
shopModule:addSellableItem({'bone shield'}, 2541, 80, 'bone shield')
shopModule:addSellableItem({'bonelord shield'}, 2518, 1200, 'bonelord shield')
shopModule:addSellableItem({'brass shield'}, 2511, 16, 'brass shield')
shopModule:addSellableItem({'castle shield'}, 2535, 5000, 'castle shield')
shopModule:addSellableItem({'copper shield'}, 2530, 50, 'copper shield')
shopModule:addSellableItem({'crown shield'}, 2519, 8000, 'crown shield')
shopModule:addSellableItem({'dark shield'}, 2521, 400, 'dark shield')
shopModule:addSellableItem({'demon shield'}, 2520, 30000, 'demon shield')
shopModule:addSellableItem({'dragon shield'}, 2516, 4000, 'dragon shield')
shopModule:addSellableItem({'dwarven shield'}, 2525, 100, 'dwarven shield')
shopModule:addSellableItem({'guardian shield'}, 2515, 2000, 'guardian shield')
shopModule:addSellableItem({'mastermind shield'}, 2514, 50000, 'mastermind shield')
shopModule:addSellableItem({'medusa shield'}, 2536, 9000, 'medusa shield')
shopModule:addSellableItem({'norse shield'}, 7460, 1500, 'norse shield')
shopModule:addSellableItem({'phoenix shield'}, 2539, 16000, 'phoenix shield')
shopModule:addSellableItem({'plate shield'}, 2510, 45, 'plate shield') 
shopModule:addSellableItem({'salamander shield'}, 3975, 280, 'salamander shield')
shopModule:addSellableItem({'scarab shield'}, 2540, 2000, 'scarab shield')
shopModule:addSellableItem({'sentinel shield'}, 3974, 120, 'sentinel shield')
shopModule:addSellableItem({'steel shield'}, 2509, 80, 'steel shield') 
shopModule:addSellableItem({'studded shield'}, 2526, 16, 'studded shield')
shopModule:addSellableItem({'tempest shield'}, 2542, 35000, 'tempest shield')
shopModule:addSellableItem({'tortoise shield'}, 6131, 150, 'tortoise shield')
shopModule:addSellableItem({'tower shield'}, 2528, 8000, 'tower shield')
shopModule:addSellableItem({'tusk shield'}, 3973, 850, 'tusk shield')
shopModule:addSellableItem({'vampire shield'}, 2534, 15000, 'vampire shield')
shopModule:addSellableItem({'viking shield'}, 2531, 85, 'viking shield')
shopModule:addSellableItem({'wooden shield'}, 2512, 5, 'wooden shield')

--axes
shopModule:addBuyableItem({'axe'}, 2386, 20, 1,'axe')
shopModule:addBuyableItem({'barbarian axe'}, 2429, 590, 1,'barbarian axe')
shopModule:addBuyableItem({'battle axe'}, 2378, 235, 1,'battle axe')
shopModule:addBuyableItem({'hand axe'}, 2380, 8, 1,'hand axe')
shopModule:addBuyableItem({'obsidian lance'}, 2425, 3000, 1,'obsidian lance')
shopModule:addBuyableItem({'sickle'}, 2405, 7, 1,'sickle')
shopModule:addSellableItem({'angelic axe'}, 7436, 5000, 'angelic axe')
shopModule:addSellableItem({'axe'}, 2386, 7, 'axe')
shopModule:addSellableItem({'barbarian axe'}, 7749, 185, 'barbarian axe')
shopModule:addSellableItem({'battle axe'}, 2378, 80, 'battle axe')
shopModule:addSellableItem({'beastslayer axe'}, 3962, 1500, 'beastslayer axe')
shopModule:addSellableItem({'butcher axe'}, 7412, 18000, 'butcher axe')
shopModule:addSellableItem({'daramanian waraxe'}, 2440, 1000, 'daramanian waraxe')
shopModule:addSellableItem({'double axe'}, 2387, 260, 'double axe')
shopModule:addSellableItem({'dragon lance'}, 2414, 9000, 'dragon lance')
shopModule:addSellableItem({'drakinata'}, 11305, 10000, 'drakinata')
shopModule:addSellableItem({'dreaded clever'}, 7419, 15000, 'dreaded clever')
shopModule:addSellableItem({'fire axe'}, 2432, 8000, 'fire axe')
shopModule:addSellableItem({'glorious axe'}, 7454, 3000, 'glorious axe')
shopModule:addSellableItem({'guardian halberd'}, 2427, 11000, 'guardian halberd')
shopModule:addSellableItem({'halberd'}, 2381, 400, 'halberd')
shopModule:addSellableItem({'hand axe'}, 2380, 4, 'hand axe')
shopModule:addSellableItem({'hatchet'}, 2388, 25, 'hatchet')
shopModule:addSellableItem({'heroic axe'}, 7389, 30000, 'heroic axe')
shopModule:addSellableItem({'knight axe'}, 7750, 2000, 'knight axe')
shopModule:addSellableItem({'naginata'}, 2426, 2000, 'naginata')
shopModule:addSellableItem({'noble axe'}, 7456, 10000, 'noble axe')
shopModule:addSellableItem({'obsidian lance'}, 2425, 500, 'obsidian lance')
shopModule:addSellableItem({'orcish axe'}, 2328, 350, 'orcish axe')
shopModule:addSellableItem({'ornamented axe'}, 7411, 20000, 'ornamented axe')
shopModule:addSellableItem({'ripper lance'}, 3964, 500, 'ripper lance')
shopModule:addSellableItem({'ruthless axe'}, 6553, 45000, 'ruthless axe')
shopModule:addSellableItem({'sickle'}, 2405, 3, 'sickle')
shopModule:addSellableItem({'titan axe'}, 7413, 4000, 'titan axe')
shopModule:addSellableItem({'vile axe'}, 7388, 30000, 'vile axe')
shopModule:addSellableItem({'war axe'}, 7753, 12000, 'war axe')
shopModule:addSellableItem({'zaoan halberd'}, 11323, 500, 'zaoan halberd') 

--club
shopModule:addBuyableItem({'battle hammer'}, 2417, 350, 1,'battle hammer') 
shopModule:addBuyableItem({'staff'}, 2401, 40, 1,'staff') 
shopModule:addBuyableItem({'clerical mace'}, 2423, 540, 1,'clerical mace')
shopModule:addBuyableItem({'club'}, 2382, 5, 1,'club') 
shopModule:addBuyableItem({'crowbar'}, 2416, 260, 1,'crowbar')
shopModule:addBuyableItem({'daramanian mace'}, 2439, 500, 1,'daramanian mace')
shopModule:addBuyableItem({'mace'}, 2398, 90, 1,'mace') 
shopModule:addBuyableItem({'morning star'}, 2394, 430, 1,'morning star') 
shopModule:addBuyableItem({'scythe'}, 2550, 50, 1,'scythe')
shopModule:addBuyableItem({'war hammer'}, 2391, 10000, 1,'war hammer')

shopModule:addSellableItem({'amber staff'}, 7426, 8000, 'amber staff')
shopModule:addSellableItem({'banana staff'}, 3966, 1000, 'banana staff')
shopModule:addSellableItem({'battle hammer'}, 2417, 120, 'battle hammer')
shopModule:addSellableItem({'bone club'}, 2382, 5, 'bone club')
shopModule:addSellableItem({'bonebreaker'}, 7428, 10000, 'bonebreaker')
shopModule:addSellableItem({'brutetamer staff'}, 7379, 1500, 'brutetamer staff')
shopModule:addSellableItem({'chaos mace'}, 7427, 9000, 'chaos mace')
shopModule:addSellableItem({'clerical mace'}, 7754, 170, 'clerical mace')
shopModule:addSellableItem({'club'}, 2382, 1, 'club')
shopModule:addSellableItem({'cranial basher'}, 7756, 30000, 'cranial basher')
shopModule:addSellableItem({'crowbar'}, 2416, 50, 'crowbar')
shopModule:addSellableItem({'daramanian mace'}, 2439, 500, 'daramanian mace')
shopModule:addSellableItem({'diamond sceptre'}, 7387, 3000, 'diamond sceptre')
shopModule:addSellableItem({'drachaku'}, 11308, 10000, 'drachaku')
shopModule:addSellableItem({'dragon hammer'}, 2434, 2000, 'dragon hammer')
shopModule:addSellableItem({'dragonbone staff'}, 7430, 3000, 'dragonbone staff')
shopModule:addSellableItem({'furry club'}, 7432, 1000, 'furry club')
shopModule:addSellableItem({'giant smithhammer'}, 2321, 250, 'giant smithhammer')
shopModule:addSellableItem({'hammer of wrath'}, 2444, 30000, 'hammer of wrath')
shopModule:addSellableItem({'heavy mace'}, 2452, 50000, 'heavy mace')
shopModule:addSellableItem({'jade hammer'}, 7422, 25000, 'jade hammer')
shopModule:addSellableItem({'lunar staff'}, 7424, 5000, 'lunar staff')
shopModule:addSellableItem({'mace'}, 2398, 30, 'mace') 
shopModule:addSellableItem({'mammoth whopper'}, 7381, 300, 'mammoth whopper')
shopModule:addSellableItem({'morning star'}, 2394, 100, 'morning star')
shopModule:addSellableItem({'onyx flail'}, 7421, 22000, 'onyx flail')
shopModule:addSellableItem({'queen sceptre'}, 7410, 20000, 'queen sceptre')
shopModule:addSellableItem({'sapphire hammer'}, 7437, 7000, 'sapphire hammer')
shopModule:addSellableItem({'scythe'}, 2550, 12, 'scythe')
shopModule:addSellableItem({'shadow sceptre'}, 7451, 10000, 'shadow sceptre')
shopModule:addSellableItem({'skull staff'}, 2436, 6000, 'skull staff')
shopModule:addSellableItem({'spiked squelcher'}, 7452, 5000, 'spiked squelcher')
shopModule:addSellableItem({'taurus mace'}, 7425, 500, 'taurus mace')
shopModule:addSellableItem({'war hammer'}, 2391, 1200, 'war hammer')

--sword
shopModule:addBuyableItem({'bone sword'}, 2450, 75, 1,'bone sword')
shopModule:addBuyableItem({'carlin sword'}, 2395, 473, 1,'carlin sword')
shopModule:addBuyableItem({'crimson sword'}, 7385, 610, 1,'crimson sword')
shopModule:addBuyableItem({'dagger'}, 2379, 5, 1,'dagger')
shopModule:addBuyableItem({'ice rapier'}, 2396, 5000, 1,'ice rapier')
shopModule:addBuyableItem({'longsword'}, 2397, 160, 1,'longsword')
shopModule:addBuyableItem({'machete'}, 2420, 35, 1,'machete')
shopModule:addBuyableItem({'rapier'}, 2384, 15, 1,'rapier')
shopModule:addBuyableItem({'sabre'}, 2385, 35, 1,'sabre')
shopModule:addBuyableItem({'serpent sword'}, 2409, 6000, 1,'serpent sword')
shopModule:addBuyableItem({'short sword'}, 2406, 30, 1,'short sword')
shopModule:addBuyableItem({'spike sword'}, 2383, 8000, 1,'spike sword')
shopModule:addBuyableItem({'sword'}, 2376, 85, 1,'sword') 
shopModule:addBuyableItem({'twin hooks'}, 11309, 1100, 1,'twin hooks')
shopModule:addBuyableItem({'two handed sword'}, 2377, 950, 1,'two handed sword')

shopModule:addSellableItem({'assassin dagger'}, 7404, 20000, 'assassin dagger')
shopModule:addSellableItem({'berserker'}, 7403, 40000, 'berserker')
shopModule:addSellableItem({'bone sword'}, 2450, 20, 'bone sword')
shopModule:addSellableItem({'broadsword'}, 2413, 500, 'broadsword')
shopModule:addSellableItem({'carlin sword'}, 2395, 118, 'carlin sword')
shopModule:addSellableItem({'crystal sword'}, 7449, 600, 'crystal sword')
shopModule:addSellableItem({'dagger'}, 2379, 2, 'dagger')
shopModule:addSellableItem({'demonrage sword'}, 7382, 36000, 'demonrage sword')
shopModule:addSellableItem({'djinn blade'}, 2451, 15000, 'djinn blade')
shopModule:addSellableItem({'dragon slayer'}, 7402, 15000, 'dragon slayer')
shopModule:addSellableItem({'epee'}, 2438, 8000, 'epee')
shopModule:addSellableItem({'fire sword'}, 2392, 4000, 'fire sword')
shopModule:addSellableItem({'giant sword'}, 2393, 17000, 'giant sword')
shopModule:addSellableItem({'haunted blade'}, 7407, 8000, 'haunted blade')
shopModule:addSellableItem({'heavy machete'}, 2442, 90, 'heavy machete')
shopModule:addSellableItem({'ice rapier'}, 2396, 1000, 'ice rapier')
shopModule:addSellableItem({'katana'}, 2412, 35, 'katana')
shopModule:addSellableItem({'longsword'}, 2397, 51, 'longsword') 
shopModule:addSellableItem({'machete'}, 2420, 6, 'machete')
shopModule:addSellableItem({'mercenary sword'}, 7386, 12000, 'mercenary sword')
shopModule:addSellableItem({'mystic blade'}, 7384, 30000, 'mystic blade')
shopModule:addSellableItem({'nightmare blade'}, 7418, 35000, 'nightmare blade')
shopModule:addSellableItem({'pharoah sword'}, 2446, 23000, 'pharoah sword')
shopModule:addSellableItem({'poison dagger'}, 2411, 50, 'poison dagger')
shopModule:addSellableItem({'rapier'}, 2384, 5, 'rapier')
shopModule:addSellableItem({'relic sword'}, 7383, 25000, 'relic sword')
shopModule:addSellableItem({'sabre'}, 2385, 12, 'sabre')
shopModule:addSellableItem({'sais'}, 11306, 16500, 'sais')
shopModule:addSellableItem({'scimitar'}, 2419, 150, 'scimitar')
shopModule:addSellableItem({'serpent sword'}, 2409, 900, 'serpent sword')
shopModule:addSellableItem({'short sword'}, 2406, 10, 'short sword')
shopModule:addSellableItem({'silver dagger'}, 2402, 500, 'silver dagger')
shopModule:addSellableItem({'spike sword'}, 2383, 1000, 'spike sword')
shopModule:addSellableItem({'sword'}, 2376, 25, 'sword') 
shopModule:addSellableItem({'templar scytheblade'}, 3963, 200, 'templar scytheblade')
shopModule:addSellableItem({'thaian sword'}, 7391, 16000, 'thaian sword')
shopModule:addSellableItem({'twiceslicer'}, 12613, 28000, 'twiceslicer')
shopModule:addSellableItem({'twin hooks'}, 11309, 500, 'twin hooks')
shopModule:addSellableItem({'two handed sword'}, 2377, 450, 'two handed sword')
shopModule:addSellableItem({'wyvern fang'}, 7408, 1500, 'wyvern fang')
shopModule:addSellableItem({'zaoan sword'}, 11307, 30000, 'zaoan sword')

--amulets
shopModule:addSellableItem({'Crystal Necklace'}, 2125, 400, 'Crystal Necklace')
shopModule:addSellableItem({'Ruby Necklace'}, 2133, 2000, 'Ruby Necklace')
shopModule:addSellableItem({'Wolf Tooth Chain'}, 2129, 100, 'Wolf Tooth Chain')
shopModule:addSellableItem({'Wailing Widow/s Necklace'}, 11329, 3000, 'Wailing Widow/s Necklace')
shopModule:addSellableItem({'Dragon Necklace'}, 2201, 100, 'Dragon Necklace')
shopModule:addSellableItem({'Garlic Necklace'}, 2199, 50, 'Garlic Necklace')
shopModule:addSellableItem({'Beetle Necklace'}, 11374, 1500, 'Beetle Necklace')
shopModule:addSellableItem({'Ancient Amulet'}, 2142, 200, 'Ancient Amulet')
shopModule:addSellableItem({'Demonbone Amulet'}, 14333, 32000, 'demonbone Amulet')
shopModule:addSellableItem({'Scarab Amulet'}, 2135, 200, 'Scarab Amulet')
shopModule:addSellableItem({'Platinum Amulet'}, 2171, 2500, 'Platinum Amulet')
shopModule:addSellableItem({'Amulet of loss'}, 2173, 45000, 'Amulet of loss')
shopModule:addSellableItem({'Bronze Amulet'}, 2172, 50, 'Bronze Amulet')
shopModule:addSellableItem({'Elven amulet'}, 2198, 100, 'Elven amulet')
shopModule:addSellableItem({'Glacier amulet'}, 7888, 1500, 'Glacier amulet')
shopModule:addSellableItem({'Leviathan/s amulet'}, 10220, 3000, 'Leviathan/s amulet')
shopModule:addSellableItem({'Lightning pendant'}, 7889, 1500, 'Lightning pendant')
shopModule:addSellableItem({'Magma amulet'}, 7890, 1500, 'Magma amulet')
shopModule:addSellableItem({'Protection amulet'}, 2200, 100, 'Protection amulet')
shopModule:addSellableItem({'Sacred Tree Amulet'}, 10219, 3000, 'Sacred Tree Amulet')
shopModule:addSellableItem({'Shockwave Amulet'}, 10221, 3000, 'Shockwave Amulet')
shopModule:addSellableItem({'Silver Amulet'}, 2170, 50, 'Silver Amulet')
shopModule:addSellableItem({'Stone Skin Amulet'}, 2197, 500, 'Stone Skin Amulet')
shopModule:addSellableItem({'Strange Talisman'}, 2161, 30, 'Strange Talisman')
shopModule:addSellableItem({'Terra Amulet'}, 7887, 1500, 'Terra Amulet')

--rings





function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	local items = {[1] = 2190, [2] = 2182, [5] = 2190, [6] = 2182}
	if(msgcontains(msg, 'first rod') or msgcontains(msg, 'first wand')) then
		if(isSorcerer(cid) or isDruid(cid)) then
			if(getPlayerStorageValue(cid, 30002) == -1) then
				selfSay('So you ask me for a {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '} to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already given you one {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 30002, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
