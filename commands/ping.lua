--ping.lua
ping = {}
function ping.exec(msglib)
	msglib.channel:send('Pong! //ping.lua//')
end
return ping
