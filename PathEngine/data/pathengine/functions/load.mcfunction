#> pathengine:load
#
# Create title and set needed scoreboards
#
# @within minecraft:load

tellraw @a[tag=!pe_noannouncement] ["",{"text":"Path Engine ","bold":true,"color":"gold"},{"text":"v1.0.0 ","color":"light_purple"},{"text":"[","color":"dark_gray"},{"text":"Loaded ✔","color":"green"},{"text":"]","color":"dark_gray"},"\n",{"text":"Created by Neocky","color":"gray"},"\n",{"text":"Github: ","color":"gray"},{"text":"www.github.com/Neocky/PathEngine","color":"aqua","underlined": true,"clickEvent":{"action":"open_url","value":"https://www.github.com/Neocky/PathEngine"}}]

# used to set direction
scoreboard objectives add pe_direction dummy

# used in for-loop
scoreboard objectives add pe_loop dummy
