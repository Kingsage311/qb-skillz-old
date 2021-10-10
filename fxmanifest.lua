fx_version 'cerulean'
game 'gta5'

description 'QB-Skillz'
version '1.0.0'

shared_script 'config.lua'

shared_scripts { 
	'@qb-core/import.lua',
	'config.lua'
}

client_scripts {
    'client/main.lua',
    'client/functions.lua'
}

exports {
    "SkillMenu",
    "UpdateSkill",
    "GetCurrentSkill"
}