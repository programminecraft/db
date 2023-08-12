#add score
scoreboard players add @s dc.color 1
#test bounds
execute if score @s dc.color matches 16.. run scoreboard players set @s dc.color 0
#update display
execute as @s[tag=dc.display_hotbar] run function displaytime:events/choose_actionbar 
#display menu
function displaytime:constants/menu
