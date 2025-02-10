advancement revoke @s only iamcal:use_empty_bucket
#say Used bucket

# make sure we have a cooldown scoreboard
scoreboard players add @s iamcal.cooldown 0

# add all targetable mobs
tag @e[type=dolphin,distance=..5] add find_looking.candidate
tag @e[type=squid,distance=..5] add find_looking.candidate
tag @e[type=glow_squid,distance=..5] add find_looking.candidate

# if we're still on cooldown, remove all candidates
execute if score iamcal iamcal.cooldown matches 1.. run tag @e remove find_looking.candidate

# see if we're looking at any candidates
function find_looking:find
tag @e remove find_looking.candidate

# if we are, capture them!
execute if entity @e[tag=find_looking.result,type=dolphin] run function iamcal:capture_dolphin
execute if entity @e[tag=find_looking.result,type=squid] run function iamcal:capture_squid
execute if entity @e[tag=find_looking.result,type=glow_squid] run function iamcal:capture_glow_squid
