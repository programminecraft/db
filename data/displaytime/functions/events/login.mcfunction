#no score
execute unless score @s dc.color matches 0.. run scoreboard players set @s dc.color 2
#login
function displaytime:events/choose_title
execute if entity @s[tag=!start] run function displaytime:constants/start
scoreboard players set @s dc.leave -1
gamerule doDaylightCycle true
