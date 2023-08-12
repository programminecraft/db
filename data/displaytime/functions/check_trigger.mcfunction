#enable trigger
scoreboard players enable @a day_menu
scoreboard players enable @a day_display
scoreboard players enable @a day_menu

#execute for triggers
execute as @a[scores={day_display=1..}] run function displaytime:events/choose_title
execute as @a[scores={day_menu=1}] run function displaytime:constants/menu

##option trigger
#bell
execute as @a[scores={day_menu=10}] run function displaytime:options/bell_off
execute as @a[scores={day_menu=11}] run function displaytime:options/bell_on
#chat
execute as @a[scores={day_menu=20}] run function displaytime:options/chat_off
execute as @a[scores={day_menu=21}] run function displaytime:options/chat_on
#display hotbar
execute as @a[scores={day_menu=30}] run function displaytime:options/hotbar_off
execute as @a[scores={day_menu=31}] run function displaytime:options/hotbar_on
#display hotbar
execute as @a[scores={day_menu=40}] run function displaytime:options/title_off
execute as @a[scores={day_menu=41}] run function displaytime:options/title_on
#color
execute as @a[scores={day_menu=100}] run function displaytime:options/cycle_color
#reset trigger
scoreboard players set @a day_display 0
scoreboard players set @a day_menu 0
