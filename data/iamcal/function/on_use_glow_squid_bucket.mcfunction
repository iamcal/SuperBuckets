advancement revoke @s only iamcal:use_glow_squid_bucket
#say Used glow squid bucket

# make sure we have a cooldown scoreboard
scoreboard players add @s iamcal.cooldown 0

# if we're able to, spawn the glow squid
execute if score @s iamcal.cooldown matches 0 run function iamcal:deploy_glow_squid
