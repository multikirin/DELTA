local discordia = require('discordia')
local client = discordia.Client()
local handster = require('handster')
client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)
--while true do
--pcall( function()
client:on('messageCreate', function(message)
	
	if message.content:lower() == 'uwu!ping' then
		message.channel:send('Pong! //main.lua//')
	end	
	handster.init(message)
	
end)
--end)
--end

client:run('Bot TOKEN HERE') --keep the Bot part IMPORTANT!!!
