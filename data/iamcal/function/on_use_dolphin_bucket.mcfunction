advancement revoke @s only iamcal:use_dolphin_bucket
#say Used dolphin bucket

# make sure we have a cooldown scoreboard
scoreboard players add @s iamcal.cooldown 0

# if we're able to, spawn the dolphin
execute if score @s iamcal.cooldown matches 0 run function iamcal:deploy_dolphin
