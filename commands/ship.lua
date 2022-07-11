--ship.lua
ship = {}
function ship.exec(msglib)
	ships = string.sub(msglib.content:lower(),10,string.find(msglib.content,"/")-1)
	shipss = string.sub(msglib.content:lower(),string.find(msglib.content,"/")+1,999)
	msglib.channel:send(ships.." and "..shipss.." have a "..math.random(1,100).."% chance to date uwu")
end
return ship
