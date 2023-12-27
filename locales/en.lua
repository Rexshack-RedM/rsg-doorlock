local Translations = {
    error = {
        nokey = "You do not have a key!",
    },
    success = { 
        
    },
    info = {
        unlocked = "unlocked",
        unlocking = "Unlocking",
        locking = "Locking",
    },
    primary = {
        use_door = 'Use',
        door_status_base = 'Door Status: ',
        door_status_lock = 'Locked',
        door_status_unlock = 'Unlocked',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
