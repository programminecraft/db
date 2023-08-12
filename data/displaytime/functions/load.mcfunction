scoreboard objectives add dc.var dummy
scoreboard objectives add dc.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add dc.color dummy

scoreboard objectives add day_menu trigger
scoreboard objectives add day_display trigger
gamerule doDaylightCycle true
gamerule sendCommandFeedback false
execute as @a unless score @s dc.color matches 0.. run scoreboard players set @s dc.color 2

#20t
function displaytime:20t
