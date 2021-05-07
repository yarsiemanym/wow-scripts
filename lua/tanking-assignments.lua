local channel = "RAID"

local tanks = {
   --"Redmaine",
   --"Orcstriker",
   "Stenegeoff",
   --"Slevenwick",
   --"Broys",
   --"Ahnjin",
   --"Arjin",
   --"Rarebear",
   --"Arelshade",
   -- "Krupp",
   --"Xhelpful"
}

local function printHeader()
   SendChatMessage("-----Tanking-Assignments------", channel)
end

local function printAssignment(tankIndex)
   local message = "{rt"..(9 - tankIndex).."} = "..tanks[tankIndex]
   SendChatMessage(message, channel)
end

local function printAssignments()
   local tankCount = #tanks

   if (tankCount > 8) then
      tankCount = 8
   end

   for tankIndex = 1, tankCount, 1 do
      printAssignment(tankIndex)
   end
end

local function printFooter()
   SendChatMessage("------------------------------", channel)
end

printHeader()
printAssignments()
printFooter()