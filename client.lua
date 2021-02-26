RegisterCommand("radio", function(source, args, rawCommand)
    if #args == 1 then
        -- TriggerEvent('chatMessage', "RADIO", {255, 255, 0}, "Set radio channel to " .. args[1])
        exports.saltychat:SetRadioChannel(args[1], true)
            r = exports.saltychat:GetRadioChannel(true)
        TriggerEvent('chatMessage', "RADIO", {255, 255, 0}, "Set radio channel to " .. r)
    end
end)
