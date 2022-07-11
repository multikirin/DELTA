--eval.lua
eval = {}
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end
local ghgh = ""
function eval.exec(msglib)
	if string.find(msglib.content, "execute") == nil then
		
		--ghgh = os.capture('lua -e "os=nil'..string.sub(msglib.content,10)..'"',true)
		--os.execute('touch ~/eval.ililli && echo "os=nil;io=nil;" > ~/eval.ililli')
		--file = io.open('~/eval.ililli',w)
		--io.write(string.sub(msglib.content,9,42197))
		
		--success,errormsg = pcall( function() load('os=nil;io=nil;'..string.sub(msglib.content,9)) end)
		--msglib.channel:send(errormsg)
		msglib.channel:send(os.capture('lua -e "os=nil;io=nil;'..string.sub(msglib.content,10)..'"'),true)
		print('lua -e "os=nil;io=nil;'..string.sub(msglib.content,10)..'"')

		--print(os.capture('cat ~/eval.ililli'))
		--load('os=nil;'..string.sub(msglib.content,10))
		--msglib.channel:send(ghgh)
		--if not success or ghgh == "" then msglib.channel:send("error") print(string.sub(msglib.content,10)) end
	else
		msglib.channel:send("string injection detected, shutting down.")
		os.exit()
	end
end
return eval

