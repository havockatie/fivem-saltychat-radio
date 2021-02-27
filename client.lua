RegisterCommand("radio", function(source, args, rawCommand)
    print(#args)
    if #args == 1 then
        exports.saltychat:SetRadioChannel(args[1], true)
        TriggerEvent('chatMessage', "RADIO", {255, 255, 0}, "Joined radio channel " .. args[1])
    elseif #args == 0 then
        channel = exports.saltychat:GetRadioChannel(true)        
        if channel ~= nil then            
            exports.saltychat:SetRadioChannel('', true)
            TriggerEvent('chatMessage', "RADIO", {255, 255, 0}, "Left radio channel " .. channel)
        end
    end
end)
