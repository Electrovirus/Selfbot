do
function run(msg, matches)
if is_sudo(msg) then
  return "➖➖➖➖➖➖➖➖➖➖➖\n🌎GROUP ID : 100"..msg.to.id.."\n👥GROUP NAME : "..msg.to.title.."\n➖➖➖➖➖➖➖➖➖➖➖\n🗣NAME : "..(msg.from.first_name or '-').."\n🌟`USERNAME` : @"..(msg.from.username or '-').."\n🆔Tg ID : "..msg.from.id.."\n➖➖➖➖➖➖➖➖➖➖➖\n📱PHONENUMBER : +"..(msg.from.phone or 'Error 404').."\n➖➖➖➖➖➖➖➖➖➖➖\n💬YOUR LINK : telegram.me/"..(msg.from.username or '-').."\n\n🔵Messenger Bot∶@Ev_Cnt_Bot \n🔴Channel∶@Ev_Official"
end
return {
  description = "info", 
  usage = "info",
  patterns = {
    "^[!#/]([Ee][Vv])$",
  },
  run = run
}
end
