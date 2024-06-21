function CreateMenu()
    local job = QBX.PlayerData.job
    local jobs = QBX.PlayerData.jobs
    local options = {
        {
            title = 'Primary job: '.. job.label,
        },
    }
    for key, value in pairs(jobs) do
        if job.name ~= key then
            local jobData = exports.qbx_core:GetJob(key)
            local option = {
                title = jobData.label,
                onSelect = function()
                    print("selected: "..key)
                    SelectJob(key)
                end,
            }
            options[#options + 1] = option
        end
    end
    lib.registerContext({
        id = 'multijob',
        title = 'Select Primary Job',
        options = options
    })
end

---@param jobName string
function SelectJob(jobName)
    lib.callback('96rp_multijobmenu:selectJob', false, function(result)
        if not result then return end
        lib.notify({
            title = 'Success',
            description = 'Primary job changed',
            type = 'success'
        })
    end, jobName)
end

RegisterCommand('multijob', function()
    CreateMenu()
    lib.showContext('multijob')
end)