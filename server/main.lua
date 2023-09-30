local RSGCore = exports['rsg-core']:GetCoreObject()
local DoorInfo	= {}

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/Rexshack-RedM/rsg-doorlock/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

        --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
        --versionCheckPrint('success', ('Latest Version: %s'):format(text))
        
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

-----------------------------------------------------------------------


RegisterServerEvent('rsg-doorlock:updatedoorsv')
AddEventHandler('rsg-doorlock:updatedoorsv', function(doorID, state, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not IsAuthorized(Player.PlayerData.job.name, Config.DoorList[doorID]) then
        TriggerClientEvent('RSGCore:Notify', src, Lang:t("error.nokey"), 'error')
            return
        else
            TriggerClientEvent('rsg-doorlock:changedoor', src, doorID, state)
        end
end)

RegisterServerEvent('rsg-doorlock:updateState')
AddEventHandler('rsg-doorlock:updateState', function(doorID, state, cb)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if type(doorID) ~= 'number' then
            return
        end
        if not IsAuthorized(Player.PlayerData.job.name, Config.DoorList[doorID]) then
            return
        end
        DoorInfo[doorID] = {}
        TriggerClientEvent('rsg-doorlock:setState', -1, doorID, state)
end)

function IsAuthorized(jobName, doorID)
    for _,job in pairs(doorID.authorizedJobs) do
        if job == jobName then
            return true
        end
    end
    return false
end

--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
