do

function run(msg, matches)
local fuse = '🔄New message \n\n🔀User ID : ' .. msg.from.id .. '\n\n🔁Group ID :' .. msg.to.id .. '\n🔄Name : ' .. msg.from.print_name ..'\n\n🔀Username :@' .. msg.from.username  ..'\n\n 🔁Message text :\n\n\n' .. matches[1]
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '222222222')
        bannedidtwo =string.find(msg.from.id, '111111111')
   bannedidthree =string.find(msg.from.id, '000000000'
        print(msg.to.id)
        if bannedidone or bannedidtwo or bannedidthree then                    --for banned people
                return 'You are in blacklist!\n talk to @Electrovirus'
 else

                 local sends0 = send_msg('user#184018132', fuse, ok_cb, false)

 return '🔁Your message was succesfully sent to @Electrovirus'



end

end
return {
  description = "Messenger",

  usage = "!message : send maseage to admin with bot",
  patterns = {
    "^[/#!]([Mm]essage) (.*)$",
    "^([Mm]essage) (.*)$"

  },
  run = run
}

end
