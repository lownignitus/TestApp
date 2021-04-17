SLASH_TESTAPP1 = '/ta'
local icon
CF = CreateFrame
local addon_name = "TestApp"

-- RegisterEvent table
local taEvents_table = {}

taEvents_table.eventFrame = CF("Frame");
taEvents_table.eventFrame:RegisterEvent("ADDON_LOADED");

function taEvents_table.eventFrame:ADDON_LOADED(AddOn)
    --	print(AddOn)
        if AddOn ~= addon_name then
            return -- not Skill Helper
        end
    
        -- Unregister ADDON_LOADED, reduce cpu lag
        taEvents_table.eventFrame:UnregisterEvent("ADDON_LOADED")
end

function taRep(id)
    local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfoByID(id)

    print("|cff4a86e8name: |r" .. name .. string.char(10) ..
            "|cff4a86e8 description: |r" .. description .. string.char(10) ..
            "|cff4a86e8 standingID: |r" .. standingID .. string.char(10) ..
            "|cff4a86e8 barMin: |r" .. barMin .. string.char(10) ..
            "|cff4a86e8 barMax: |r" .. barMax .. string.char(10) ..
            "|cff4a86e8 barValue: |r" .. barValue .. string.char(10) ..
            "|cff4a86e8 atWarWith: |r" .. tostring(atWarWith) .. string.char(10) ..
            "|cff4a86e8 canToggleAtWar: |r" .. tostring(canToggleAtWar) .. string.char(10) ..
            "|cff4a86e8 isHeader: |r" .. tostring(isHeader) .. string.char(10) ..
            "|cff4a86e8 isCollapsed: |r" .. tostring(isCollapsed) .. string.char(10) ..
            "|cff4a86e8 hasRep: |r" .. tostring(hasRep) .. string.char(10) ..
            "|cff4a86e8 isWatched: |r" .. tostring(isWatched) .. string.char(10) ..
            "|cff4a86e8 isChild: |r" .. tostring(isChild) .. string.char(10) ..
            "|cff4a86e8 factionID: |r" .. factionID .. string.char(10) ..
            "|cff4a86e8 hasBonusRepGain: |r" .. tostring(hasBonusRepGain) .. string.char(10) ..
            "|cff4a86e8 canBeLFGBonus: |r" .. tostring(canBeLFGBonus))
end

function taItem(id)
    local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemIcon, itemSellPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, isCraftingReagent = GetItemInfo(id) 

    print("|cff4a86e8itemName: |r" .. itemName .. string.char(10) ..
            "|cff4a86e8 itemLink: |r" .. itemLink .. string.char(10) ..
            "|cff4a86e8 itemRarity: |r" .. itemRarity .. string.char(10) ..
            "|cff4a86e8 itemLevel: |r" .. itemLevel .. string.char(10) ..
            "|cff4a86e8 itemMinLevel: |r" .. itemMinLevel .. string.char(10) ..
            "|cff4a86e8 itemType: |r" .. itemType .. string.char(10) ..
            "|cff4a86e8 itemSubType: |r" .. itemSubType .. string.char(10) ..
            "|cff4a86e8 itemStackCount: |r" .. itemStackCount .. string.char(10) ..
            "|cff4a86e8 itemEquipLoc: |r" .. tostring(itemEquipLoc) .. string.char(10) ..
            "|cff4a86e8 itemIcon: |r" .. itemIcon .. string.char(10) ..
            "|cff4a86e8 itemSellPrice: |r" .. itemSellPrice .. string.char(10) ..
            "|cff4a86e8 itemClassID: |r" .. itemClassID .. string.char(10) ..
            "|cff4a86e8 itemSubClassID: |r" .. itemSubClassID .. string.char(10) ..
            "|cff4a86e8 bindType: |r" .. bindType .. string.char(10) ..
            "|cff4a86e8 expacID: |r" .. expacID .. string.char(10) ..
            "|cff4a86e8 itemSetID: |r" .. tostring(itemSetID) .. string.char(10) ..
            "|cff4a86e8 isCraftingReagent: |r" .. tostring(isCraftingReagent))
end

function taItemLevel(id)
    local effectiveILvl, isPreview, baseILvl = GetDetailedItemLevelInfo(id)

    print("|cff4a86e8effectiveLevel: |r" .. effectiveILvl .. string.char(10) ..
            "|cff4a86e8isPreview: |r" .. tostring(isPreview) .. string.char(10) ..
            "|cff4a86e8baseIlvl: |r" .. baseILvl)
end

function taAchievement(id)
    local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy, mystery = GetAchievementInfo(id)

    print("|cff4a86e8id: |r" .. id .. string.char(10) ..
            "|cff4a86e8 name: |r" .. name .. string.char(10) ..
            "|cff4a86e8 points: |r" .. points .. string.char(10) ..
            "|cff4a86e8 completed: |r" .. tostring(completed) .. string.char(10) ..
            "|cff4a86e8 month: |r" .. month .. string.char(10) ..
            "|cff4a86e8 day: |r" .. day .. string.char(10) ..
            "|cff4a86e8 year: |r" .. year .. string.char(10) ..
            "|cff4a86e8 description: |r" .. description .. string.char(10) ..
            "|cff4a86e8 flags: |r" .. flags .. string.char(10) ..
            "|cff4a86e8 icon: |r" .. icon .. string.char(10) ..
            "|cff4a86e8 rewardText: |r" .. rewardText .. string.char(10) ..
            "|cff4a86e8 isGuild: |r" .. tostring(isGuild) .. string.char(10) ..
            "|cff4a86e8 wasEarnedByMe: |r" .. tostring(wasEarnedByMe) .. string.char(10) ..
            "|cff4a86e8 earnedBy: |r" .. earnedBy .. string.char(10) ..
            "|cff4a86e8 mystery: |r" .. tostring(mystery))
end
function SlashCmdList.TESTAPP(msg, Editbox)
    local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
	if cmd == "rep" and args ~= "" then
        taRep(args)
    elseif cmd == "item" and args ~= "" then
        taItem(args)
    elseif cmd == "level" and args ~= "" then
        taItemLevel(args)
	elseif cmd == "achievement" and args ~= "" then
        taAchievement(args)
    else
		ChatFrame1:AddMessage("|cff4a86e8Test App Slash Commands|r")
		ChatFrame1:AddMessage("|cff4a86e8type /ta followed by:|r")
        ChatFrame1:AddMessage("|cff4a86e8  -- rep <id> to get rep info|r")
        ChatFrame1:AddMessage("|cff4a86e8  -- item <id> to get item info|r")
        ChatFrame1:AddMessage("|cff4a86e8  -- level <id> to get item level")
        ChatFrame1:AddMessage("|cff4a86e8  -- achievement <id> to get achievment info")
	end
end