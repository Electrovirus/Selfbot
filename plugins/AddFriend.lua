function reload_plugins( )
  plugins = {}
  load_plugins()
end
   function run(msg, matches)
    if tonumber (msg.from.id) == 184018132 and if matches[1]:lower() == "setfriend" then
          table.insert(_config.friend_users, tonumber(matches[2]))
      print(matches[2]..' added to friends list.')
     save_config()
     reload_plugins(true)
      return matches[2]..' added to friends list.'
   elseif matches[1]:lower() == "remfriend" then
      table.remove(_config.friend_users, tonumber(matches[2]))
      print(matches[2]..' removed from friends list.')
     save_config()
     reload_plugins(true)
      return matches[2]..' removed from friends list.'
      end
   end
end
return {
patterns = {
"^[!/#]([Ss]etfriend) (%d+)$",
"^[!/#]([Rr]emfriend) (%d+)$"
},
run = run
}
