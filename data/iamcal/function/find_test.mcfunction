# clear old scoreboard for easier debugging
scoreboard objectives remove find_look.temp
scoreboard objectives add find_look.temp dummy
scoreboard objectives setdisplay sidebar find_look.temp

effect clear @e minecraft:glowing
execute as @a at @s run tag @e[type=villager,distance=..10] add find_looking.candidate
execute as @a at @s run function find_looking:find
tag @e remove find_looking.candidate