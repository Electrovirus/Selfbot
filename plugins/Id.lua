do
function run(msg, matches)
  if matches[1] == 'id' then
return "📍Your id : -"..msg.from.id..""
end
  if matches[1] == 'gid' then
return "📍Group id : -100"..msg.to.id..""  
end
  if matches[1] == 'phone' then
return "📍Your phoneNumber : +"..(msg.from.phone or '404 \nI dont have your number')..""
end
end
return {
  patterns = {
    "^[!#/](.*)$",
  },
  run = run
}
end
