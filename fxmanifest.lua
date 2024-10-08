fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'rsg-doorlock'
version '1.0.3'

server_scripts {
    'server/main.lua',
    'server/versionchecker.lua'
}

shared_scripts {
    '@rsg-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

dependency 'rsg-core'

lua54 'yes'
