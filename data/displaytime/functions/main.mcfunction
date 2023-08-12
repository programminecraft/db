#store days and datime
execute store result score %daytime dc.var run time query daytime
execute store result score %days dc.var run time query day

#check for login or morning
execute as @a unless score @s dc.leave matches -1 run function displaytime:events/login
execute if score %daytime dc.var matches 1 as @a run function displaytime:events/morning_event
#trigger
function displaytime:check_trigger

#stop daylight cycle if nobody is online
execute if entity @a run scoreboard players set %online dc.var 1
execute if score %online dc.var matches 0 run gamerule doDaylightCycle false
scoreboard players set %online dc.var 0
