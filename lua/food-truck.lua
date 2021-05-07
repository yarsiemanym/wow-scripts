local channel = "RAID"

local menuItems = {
   20452, -- Smoked Desert Dumplings
   13928, -- Grilled Squid
   --18254, -- Runn Tum Tuber Surprise
   13931, -- Nightfin Soup
   18045, -- Tender Wolf Steak
   21151, -- Rumsey Rum Black Label
   12404, -- Dense Sharpening Stone
   12643, -- Dense Weight Stone
   14530, -- Heavy Runecloth Bandage
}

local advertiseSpecials = true

local specialItems = {
   21023, -- Dirge's Kickin' Chimaerok Chops
   18262, -- Elemental Sharpening Stone
}

local function printHeader()
   SendChatMessage("------Sten's-Food-Truck-------", channel)
end

local function printItem(items, itemIndex)
   local itemId = items[itemIndex]
   local _, link = GetItemInfo(itemId)
   local quantity = GetItemCount(itemId)

   if (quantity > 0) then
      SendChatMessage(link.." ("..quantity..")", channel)
   else
      SendChatMessage(link.." {rt7}OUT OF STOCK{rt7}", channel)
   end
end

local function printMenu()
   for itemIndex = 1, #menuItems, 1 do
      printItem(menuItems, itemIndex)
   end
end

local function printSpecials()
   if (#specialItems > 0) then
      SendChatMessage("---------{rt1}Specials{rt1}----------", channel)
   end

   for itemIndex = 1, #specialItems, 1 do
      printItem(specialItems, itemIndex)
   end
end

local function printFooter()
   SendChatMessage("------------------------------", channel)
   SendChatMessage("Open trade and a whisper your order.", channel)
end

printHeader()
printMenu()

if (advertiseSpecials) then
   printSpecials()
end

printFooter()