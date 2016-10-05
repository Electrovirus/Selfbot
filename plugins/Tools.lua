do

----------------------
function run(msg, matches) 
	 --------------------------
  if matches[1] == 'call' and is_sudo(msg) then
    if msg.to.type == "user" then 
      return "Groups only🔰"
      end
    if msg.to.type == 'chat' then
      return  "👥 @"..matches[2].." \nAre you here?" 
      end
    if not is_sudo(msg) then 
      return 
      end
    else
      return  "👥 @"..matches[2].." \nAre you here?" 
      end
-----------------------
    if matches[1] == 'addplugin' and is_sudo(msg) then
        if not is_sudo(msg) then
           return "You Are Not Allow To Add Plugin"
           end
   name = matches[2]
   text = matches[3]
   file = io.open("./plugins/"..name, "w")
   file:write(text)
   file:flush()
   file:close()
   return "Add plugin was successful "
end
-----------------------
if matches[1] == "delplugin" and is_sudo(msg) then
	      if not is_sudo(msg) then 
             return "You Are Not Allow To Delete Plugins!"
             end 
        io.popen("cd plugins && rm "..matches[2]..".lua")
        return "Delete plugin successful "
     end
-----------------------
      if matches[1] == "dl" and matches[2] == "plugin" and is_sudo(msg) then
     if not is_sudo(msg) then
    return "You Are Not Allow To Download Plugins!"
  end
   receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..matches[3]..".lua", ok_cb, false)
      send_document(receiver, "./plugins/"..matches[3], ok_cb, false)
    end
end
end
return {               
patterns = {
   "^[!/]([Aa]ddplugin) (.+) (.*)$",
   "^[!/]([Dd]l) ([Pp]lugin) (.*)$",
   "^[!/]([Dd]elplugin) (.*)$",
   "^[!/](call) (.*)$",
 }, 
run = run,
}
