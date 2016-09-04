do
    
function run(msg, matches)
  local help = [[Hese neveshtan nabood :)
👇
➖➖➖➖➖➖
My Channel : @Ev_official 😎
➖➖➖➖➖➖]]
    if matches[1] == 'help' and is_sudo(msg) then
      send_large_msg("user#id"..msg.from.id, help)      
   return 'Help was sent in your Pv☑'
    end
end 

return {
  patterns = {
    "^[!/#](help)$"
  },
  run = run
}
end

