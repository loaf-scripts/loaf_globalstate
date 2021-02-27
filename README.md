# loaf_globalstate
GlobalStates without OneSync. I still recommend you to use OneSync.

## How to use this?
Simply add this to your __resource.lua / fxmanifest.lua in the script you want to use GlobalStates with:
```lua
server_script "@loaf_globalstate/server.lua"
client_script "@loaf_globalstate/client.lua"
```

Example before: 
```lua
fx_version "adamant"
game "gta5"

shared_script "config/*.lua"
client_script {
    "client/*.lua",
    "client/grades/*.lua"
}
server_script "server/*.lua"
```

Example after:
```lua
fx_version "adamant"
game "gta5"

shared_script "config/*.lua"
client_script {
    "client/*.lua",
    "client/grades/*.lua"
}
server_script "server/*.lua"

server_script "@loaf_globalstate/server.lua"
client_script "@loaf_globalstate/client.lua"
```
