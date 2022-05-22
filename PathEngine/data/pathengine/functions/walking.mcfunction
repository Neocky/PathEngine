#> pathengine:walking
#
# Logic to move all entitys
#
# @within pathengine:tick

# score 'pe_direction' sets direction for movement
#    1
#  4 0 2
#    3


# normal speed walking
# facing north, east, south, west
execute as @e[scores={pe_direction=1}, tag=!pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.17 180 0
execute as @e[scores={pe_direction=2}, tag=!pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~0.17 ~ ~ -90 0
execute as @e[scores={pe_direction=3}, tag=!pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.17 0 0
execute as @e[scores={pe_direction=4}, tag=!pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.17 ~ ~ 90 0

# slow speed walking with tag pe_slow
execute as @e[scores={pe_direction=1}, tag=pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~-0.14 180 0
execute as @e[scores={pe_direction=2}, tag=pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~0.14 ~ ~ -90 0
execute as @e[scores={pe_direction=3}, tag=pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~ ~0.14 0 0
execute as @e[scores={pe_direction=4}, tag=pe_slow] at @s unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.14 ~ ~ 90 0


# --------------------------------------
# start special block section
#slabs
#north
execute as @e[scores={pe_direction=1}] at @s if block ~ ~-1 ~-0.2 #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~-0.17 180 0
execute as @e[scores={pe_direction=1}] at @s if block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~-0.1 #minecraft:slabs unless block ~ ~ ~-0.2 minecraft:air run teleport @s ~ ~0.5 ~-0.17 180 0
execute as @e[scores={pe_direction=1}] at @s if block ~ ~0.5 ~-0.2 #minecraft:slabs run teleport @s ~ ~0.5 ~-0.17 180 0

# east
execute as @e[scores={pe_direction=2}] at @s if block ~0.2 ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~0.17 ~-0.5 ~ -90 0
execute as @e[scores={pe_direction=2}] at @s if block ~ ~ ~ #minecraft:slabs unless block ~0.1 ~ ~ #minecraft:slabs unless block ~ ~ ~0.2 minecraft:air run teleport @s ~0.17 ~0.5 ~ -90 0
execute as @e[scores={pe_direction=2}] at @s if block ~0.2 ~0.5 ~ #minecraft:slabs run teleport @s ~0.17 ~0.5 ~ -90 0

#south
execute as @e[scores={pe_direction=3}] at @s if block ~ ~-1 ~0.2 #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~0.17 0 0
execute as @e[scores={pe_direction=3}] at @s if block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~0.1 #minecraft:slabs unless block ~ ~ ~0.2 minecraft:air run teleport @s ~ ~0.5 ~0.17 0 0
execute as @e[scores={pe_direction=3}] at @s if block ~ ~0.5 ~0.2 #minecraft:slabs run teleport @s ~ ~0.5 ~0.17 0 0

# west
execute as @e[scores={pe_direction=4}] at @s if block ~-0.2 ~-1 ~ #minecraft:slabs[type=bottom] run teleport @s ~-0.17 ~-0.5 ~ 90 0
execute as @e[scores={pe_direction=4}] at @s if block ~ ~ ~ #minecraft:slabs unless block ~-0.1 ~ ~ #minecraft:slabs unless block ~ ~ ~-0.2 minecraft:air run teleport @s ~-0.17 ~0.5 ~ 90 0
execute as @e[scores={pe_direction=4}] at @s if block ~-0.2 ~0.5 ~ #minecraft:slabs run teleport @s ~-0.17 ~0.5 ~ 90 0


# stairs
# north
execute as @e[scores={pe_direction=1}] at @s if block ~ ~-0.5 ~0.7 #minecraft:stairs[facing=south] run teleport @s ~ ~-0.5 ~-0.17 180 0
execute as @e[scores={pe_direction=1}] at @s if block ~ ~ ~-0.05 #minecraft:stairs[facing=north] run teleport @s ~ ~0.5 ~-0.17 180 0

#east
execute as @e[scores={pe_direction=2}] at @s if block ~-0.7 ~-0.5 ~ #minecraft:stairs[facing=west] run teleport @s ~0.17 ~-0.5 ~ -90 0
execute as @e[scores={pe_direction=2}] at @s if block ~0.05 ~ ~ #minecraft:stairs[facing=east] run teleport @s ~0.17 ~0.5 ~ -90 0

# south
execute as @e[scores={pe_direction=3}] at @s if block ~ ~-0.5 ~-0.7 #minecraft:stairs[facing=north] run teleport @s ~ ~-0.5 ~0.17 0 0
execute as @e[scores={pe_direction=3}] at @s if block ~ ~ ~0.05 #minecraft:stairs[facing=south] run teleport @s ~ ~0.5 ~0.17 0 0

#west
execute as @e[scores={pe_direction=4}] at @s if block ~0.7 ~-0.5 ~ #minecraft:stairs[facing=east] run teleport @s ~-0.17 ~-0.5 ~ 90 0
execute as @e[scores={pe_direction=4}] at @s if block ~-0.05 ~ ~ #minecraft:stairs[facing=west] run teleport @s ~-0.17 ~0.5 ~ 90 0


#air
execute as @e[scores={pe_direction=1}] at @s if block ~ ~-0.5 ~0.2 minecraft:air unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run teleport @s ~ ~-0.5 ~-0.17 180 0
execute as @e[scores={pe_direction=2}] at @s if block ~0.2 ~-0.5 ~ minecraft:air unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run teleport @s ~0.17 ~-0.5 ~ -90 0
execute as @e[scores={pe_direction=3}] at @s if block ~ ~-0.5 ~-0.2 minecraft:air unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run teleport @s ~ ~-0.5 ~0.17 0 0
execute as @e[scores={pe_direction=4}] at @s if block ~-0.2 ~-0.5 ~ minecraft:air unless block ~ ~ ~ #minecraft:stairs unless block ~ ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run teleport @s ~-0.17 ~-0.5 ~ 90 0
# end special block section
# --------------------------------------


# give score to break loop after 2 iterations if sign is infront in the ground of entity
execute as @e[scores={pe_direction=1}] at @s if block ~ ~-2 ~-0.5 #minecraft:signs{Text1:'{"text":"Pathengine"}'} run scoreboard players set @s pe_loop 3
execute as @e[scores={pe_direction=2}] at @s if block ~0.5 ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run scoreboard players set @s pe_loop 3
execute as @e[scores={pe_direction=3}] at @s if block ~ ~-2 ~0.5 #minecraft:signs{Text1:'{"text":"Pathengine"}'} run scoreboard players set @s pe_loop 3
execute as @e[scores={pe_direction=4}] at @s if block ~-0.5 ~-2 ~ #minecraft:signs{Text1:'{"text":"Pathengine"}'} run scoreboard players set @s pe_loop 3


# center entity on block for all directions
execute as @e[scores={pe_direction=1}] at @s if score @s pe_loop matches 1 align z run teleport @s ~ ~ ~0.5
execute as @e[scores={pe_direction=2}] at @s if score @s pe_loop matches 1 align x run teleport @s ~0.5 ~ ~
execute as @e[scores={pe_direction=3}] at @s if score @s pe_loop matches 1 align z run teleport @s ~ ~ ~0.5
execute as @e[scores={pe_direction=4}] at @s if score @s pe_loop matches 1 align x run teleport @s ~0.5 ~ ~
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 1 run scoreboard players remove @s pe_loop 1


# copy movement direction to entity if center of block is reached and call function and reset loop
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text1: '{"text":"Pathengine"}'} unless block ~ ~-2 ~ #minecraft:signs{Text3:'{"text":""}'} run function pathengine:movement/function_call
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text2: '{"text":"0"}',Text1: '{"text":"Pathengine"}'} run scoreboard players set @s pe_direction 0
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text2: '{"text":"1"}',Text1: '{"text":"Pathengine"}'} run scoreboard players set @s pe_direction 1
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text2: '{"text":"2"}',Text1: '{"text":"Pathengine"}'} run scoreboard players set @s pe_direction 2
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text2: '{"text":"3"}',Text1: '{"text":"Pathengine"}'} run scoreboard players set @s pe_direction 3
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text2: '{"text":"4"}',Text1: '{"text":"Pathengine"}'} run scoreboard players set @s pe_direction 4
execute as @e[scores={pe_direction=0..4}] if score @s pe_loop matches 0 at @s if block ~ ~-2 ~ #minecraft:signs{Text1: '{"text":"Pathengine"}'} run scoreboard players reset @s pe_loop


# decrease loop by one and go up
execute as @e[scores={pe_direction=1..4}] if score @s pe_loop matches 2.. run scoreboard players remove @s pe_loop 1
