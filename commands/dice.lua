--dice.lua
dice = {}
function dice.exec(msglib)
	numb = string.sub(msglib.content,10)
	thechance = math.random(1,numb)
	msglib.channel:send('i rolled a '..thechance)
	msglib.channel:send('uwu')
end
return dice
