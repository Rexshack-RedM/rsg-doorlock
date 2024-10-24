local Translations = {
error = {
    nokey = "Você não possui uma chave!",
},
success = { 
        
},
info = {
    unlocked = "destrancado",
    unlocking = "Destrancando",
    locking = "Trancando",
},

primary = {
    use_door = 'Usar',
    door_status_base = 'A porta está: ',
    door_status_lock = 'Fechada',
    door_status_unlock = 'Aberta',
},

}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end

