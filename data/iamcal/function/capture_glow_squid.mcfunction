#say "Capturing Glow Squid"

teleport @e[tag=find_looking.result,type=glow_squid] ~ ~-1000 ~
kill @e[tag=find_looking.result,type=glow_squid]

item replace entity iamcal weapon.mainhand with minecraft:emerald[custom_data={"super_bucket": "glow_squid"},enchantment_glint_override=true,item_name="{\"color\":\"dark_red\",\"italic\":true,\"text\":\"Super Bucket (Glow Squid)\"}",item_model="bucket",consumable={nutrition:0,saturation:0,consume_seconds:1000000,can_always_eat:true}]

playsound minecraft:entity.glow_squid.squirt master @s

scoreboard players set @s iamcal.cooldown 20