--about.lua
about = {}
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
function about.exec(msglib)
	print("hh")
	msglib.channel:send('```'..os.capture("cumfetch",true)..'```')
end
return about
