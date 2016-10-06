
do
local function is_link(jtext)
if jtext:match("http") then
return true
end
return false
end
local function pre_process(msg)
    

    local hash = 'linklock:'..msg.to.id
    if redis:get(hash) and is_link(msg.text) and not is_friend(msg)then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_sudo(msg) and matches[1] == 'antilink' and matches[2] == 'enable' then
      
            
                    local hash = 'linklock:'..msg.to.id
                    redis:set(hash, true)
                    return "Antilink enabled on this chat"
  elseif is_sudo(msg) and matches[1] == 'antilink' and matches[2] == 'disable' then
                    local hash = 'cmdlock:'..msg.to.id
                    redis:del(hash)
                    return "Antilink disabled on this chat"
end

end

return {
    patterns = {
        '^[/!#](antilink) (enable)$',
        '^[/!#](antilink) (disable)$'
    },
    run = run,
    pre_process = pre_process
}
end
