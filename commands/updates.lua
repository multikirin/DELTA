--updates.lua
updates = {}
function updates.exec(msglib)
	msglib.channel:send([[
CUMBOT UPDATE 1.0:
	-added command ping
	-added command about
	-added command eval
CUMBOT UPDATE 2.0:
	-added command dice
	-allowed commands to be case insensitive
CUMBOT UPDATE 3.0:
	-fixed incorrect arguments crashing the bot
	-added command ship
	-added command help
]])
end
return updates
