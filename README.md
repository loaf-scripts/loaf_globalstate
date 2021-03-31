# loaf_globalstate
GlobalStates without OneSync. I still recommend you to use OneSync.

## How to use this?
Simply add this to your __resource.lua / fxmanifest.lua in the script you want to use GlobalStates with:
```lua
shared_script "@loaf_globalstate/globalstate.lua"
```
Remember to write `refresh` in your server console before restarting the script to save changes to __resource.lua / fxmanifest.lua

Example before: 
```lua
fx_version "adamant"
game "gta5"

shared_script "config/*.lua"
client_script "client/*.lua"
server_script {
    "@mysql-async/lib/MySQL.lua",
    "server/*.lua"
}
dependency {
    "loaf_keysystem", 
    "mythic_interiors"
}

-- Motel script by Loaf Scripts#7785
```

Example after:
```lua
fx_version "adamant"
game "gta5"

shared_script "config/*.lua"
client_script "client/*.lua"
server_script {
    "@mysql-async/lib/MySQL.lua",
    "server/*.lua"
}
dependency {
    "loaf_keysystem", 
    "mythic_interiors"
}
shared_script "@loaf_globalstate/globalstate.lua"

-- Motel script by Loaf Scripts#7785
```
