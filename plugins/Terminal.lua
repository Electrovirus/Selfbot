local function run(msg, matches)
 if is_sudo then
local text = io.popen(matches[1]):read('*all')
  return text
end
 if not is_sudo
local text = "🚫Needs sudo acces\n🔋Local sudo∶Electrovirus"
  return text
end
  end
return {
  patterns = {
    '^$(.*)$'
  },
  run = run,
  moderated = true
}
