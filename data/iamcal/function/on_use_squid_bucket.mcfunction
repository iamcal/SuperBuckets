advancement revoke @s only iamcal:use_squid_bucket
#say Used squid bucket

# make sure we have a cooldown scoreboard
scoreboard players add @s iamcal.cooldown 0

# if we're able to, spawn the squid
execute if score @s iamcal.cooldown matches 0 run function iamcal:deploy_squid
