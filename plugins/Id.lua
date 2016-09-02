do
function run(msg, matches)
  return "➖➖➖➖➖➖➖➖➖➖➖\n🌎GROUP ID : 100"..msg.to.id.."\n👥GROUP NAME : "..msg.to.title.."\n➖➖➖➖➖➖➖➖➖➖➖\n🗣NAME : "..(msg.from.first_name or '-').."\n🌟`USERNAME` : @"..(msg.from.username or '-').."\n🆔Tg ID : "..msg.from.id.."\n➖➖➖➖➖➖➖➖➖➖➖\n📱PHONENUMBER : +"..(msg.from.phone or 'Error 404').."\n➖➖➖➖➖➖➖➖➖➖➖\n💬YOUR LINK : telegram.me/"..(msg.from.username or '-').."\n"
end
return {
  description = "info", 
  usage = "info",
  patterns = {
    "^[!#/]([Ii][Dd])$",
  },
  run = run
}
end
