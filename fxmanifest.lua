fx_version 'cerulean'
game 'gta5'

name "96rp_multijobmenu"
description "Menu that allows player to choose their primary job from they are part of."
author "smirnoff"
version "0.0.1"
lua54 'yes'

shared_scripts {
	'@ox_lib/init.lua',
}

client_scripts {
	"@qbx_core/modules/playerdata.lua",
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}
