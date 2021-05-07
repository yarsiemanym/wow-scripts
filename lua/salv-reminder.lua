local channel = "RAID"

local messages = {
   {
      "In the Midnight Ire she cried \"SALV, SALV, SALV!\"",
      "With a rebel yell she cried \"SALV, SALV, SALV!\""
   },
   {
      "If you wanna be my pally,",
      "You gotta SALV all my friends.",
      "Make it last for ever.",
      "Raiding never ends."
   }
}

local function printMessage(messageIndex)
   local message = messages[messageIndex]

   for lineIndex = 1, #message, 1 do
      local line = message[lineIndex]
      SendChatMessage(line, channel)
   end
end

local function printRandomMessage()
   local messageIndex = math.random(#messages)
   printMessage(messageIndex)
end

printRandomMessage()