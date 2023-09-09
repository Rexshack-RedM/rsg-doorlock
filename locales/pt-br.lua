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
}

}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
