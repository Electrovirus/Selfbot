do

function run(msg, matches)
local reply_id = msg['id']
local text = 'Use these ways to contact me : \nUsername : @Electrovirus \nCntBot : @Ev_cnt_bot \nMsgBot : @Ev_msg_bot \nChannel : @Ev_official'
if matches[1] == 'تماس با من' or 'contact' then
    if not is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
"^(تماس با من)$",
"^([Cc]ontact)$"
},
run = run
}

end

