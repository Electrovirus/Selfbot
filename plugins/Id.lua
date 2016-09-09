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
function run(msg, matches)
  if matches[1] == 'me' then
return "📍Your are "(..msg.from.username.. or ..msg.from.first_name..)" and Your Tg id is "..msg.from.id.."" end
end
end
return {
  patterns = {
    "^[!#/](.*)$",
  },
  run = run
}
end
