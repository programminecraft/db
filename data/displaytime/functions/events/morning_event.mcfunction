function displaytime:events/choose_title
execute as @s[tag=bell] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 999 0.7
execute as @s[tag=chat_message] run tellraw @s ["",{"text":"The sun is rising: ","color":"dark_green"},{"text":"Day ","bold":true,"color":"gold"},{"score":{"name":"%days","objective":"dc.var"},"bold":true,"color":"gold"}]
