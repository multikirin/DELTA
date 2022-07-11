--help.lua
help = {}
function help.exec(msglib)
	helpp = string.sub(msglib.content:lower(),10)
	if helpp == "help" then
		msglib.channel:send([[
CUMHELP 1.0:
	CMD HELP:
		Command that helps finding out what the other commands do.
]])
	elseif helpp == "" then
		msglib.channel:send([[
CUMHELP 1.0:
	CMD GENERIC:
		Available commands:
			ping
			about
			eval
			updates
			dice
			ship
]])
	elseif helpp == "ping" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD PING:
		Replies "Pong!". Altough the file for this command is ping.lua, the main process and the handster process reply too.
]])
	elseif helpp == "about" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD ABOUT:
		Shows info about the host.
]])
	elseif helpp == "eval" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD EVAL:
		Executes lua code and sends whatever it printed. NOTE: Due to bugs, you have to use ' ' instead of " ". This will be fixed in 4.0
]])
	elseif helpp == "updates" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD UPDATES:
		Shows the changelog for the last cumupdate.
]])
	elseif helpp == "dice" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD DICE:
		Give it a number and it will give a random number from 1 to the number you gave it.
]])
	elseif help == "shi" then
		msglib.channel:send([[
CUMHELP 1.0
	CMD DICE:
		Love is in the air! Give 2 names and I will see the chances of them dating.
		NOTE!!! the syntax is as follows: uwu!ship person1|person 2
		(spaces are supported, but the command wont work without the | separating the names.)
]])
	end
end
return help
