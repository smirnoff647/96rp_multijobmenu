lib.callback.register('96rp_multijobmenu:selectJob', function(source, jobName)
    local playerData = exports.qbx_core:GetPlayer(source).PlayerData
    local result = exports.qbx_core:SetPlayerPrimaryJob(playerData.citizenid, jobName)
    return result
end)