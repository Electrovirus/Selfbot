do
function run(msg, matches)
  if matches[1] == 'id' then
return "ℹ️Your id : "..msg.from.id..""
end
  if matches[1] == 'gid' then
return "ℹ️Group id : "..msg.to.id..""  
end
  if matches[1] == 'phone' then
return "ℹ️Your phoneNumber : +"..(msg.from.phone or '404 \nI dont have your number')..""
end
end
return {
  usage = {
    '!id : user id',
    '!gid : group id',
    '!phone : phone number'
  },
  patterns = {
    "^[!#/](.*)$",
  },
  run = run
}
end
