-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = "yes"
protectionLevel = 1
killsToRedSkull = 3
killsToBlackSkull = 6
pzLocked = 60000
removeAmmoWhenUsingDistanceWeapon = "yes"
removeChargesFromRunes = "yes"
timeToDecreaseFrags = 24 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
stairJumpExhaustion = 0
experienceByKillingPlayers = "no"
expFromPlayersLevelRange = 75
noDamageToSameLookfeet = "no"

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
ip = "76.8.214.176"
bindOnlyGlobalAddress = "no"
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to The Forgotten Server!"
onePlayerOnlinePerAccount = "yes"
allowClones = "no"
serverName = "Forgotten"
statusTimeout = 5000
replaceKickOnLogin = "yes"
maxPacketsPerSecond = 25

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = 0

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 1000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 200

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "OfficialMap"
mapAuthor = "Loring"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = "yes"
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "loring3"
mysqlPass = "loring"
mysqlDatabase = "1.0"
mysqlPort = 3306
mysqlSock = ""

-- Misc.
allowChangeOutfit = "yes"
freePremium = "yes"
kickIdlePlayerAfterMinutes = 200
maxMessageBuffer = 4
emoteSpells = "no"
classicEquipmentSlots = "yes"

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 5
rateSkill = 5
rateLoot = 2
rateMagic = 4
rateSpawn = 1

-- Monsters
deSpawnRange = 20
deSpawnRadius = 1000000

-- Stamina
staminaSystem = "no"


-- Scripts
warnUnsafeScripts = "no"
convertUnsafeScripts = "no"

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process priority.
defaultPriority = "high"
startupDatabaseOptimization = "no"

-- Status server information
ownerName = ""
ownerEmail = ""
url = "http://otland.net/"
location = "Sweden"
