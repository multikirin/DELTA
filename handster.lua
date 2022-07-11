--handster.lua
handster = {}
function handster.init(msglib)
	if string.sub(msglib.content:lower(),5,8) == "ping" then
		msglib.channel:send("Pong! //handster.lua//")
		success,errormsg = pcall( function() require('commands/ping').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content:lower(),5,9) == "about" then
--		print("j")
		success,errormsg = pcall( function() require('commands/about').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content:lower(),5,8) == "eval" then
		success,errormsg = pcall( function() require('commands/eval').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content:lower(),5,11) == "updates" then
		success,errormsg = pcall( function() require('commands/updates').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content:lower(),5,8) == "dice" then
		success,errormsg = pcall( function() require('commands/dice').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content,5,8) == "help" then
		success,errormsg = pcall( function() require('commands/help').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	elseif string.sub(msglib.content,5,8) == "ship" then
		success,errormsg = pcall( function() require('commands/ship').exec(msglib) end) if not success then msglib.channel:send('ERROR:'..errormsg..' //handster.lua//') end
	end
end
return handster
