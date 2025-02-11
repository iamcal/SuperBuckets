summon minecraft:glow_squid ^ ^1.5 ^1

item replace entity @s weapon.mainhand with minecraft:emerald[custom_data={"super_bucket": "empty"},enchantment_glint_override=true,item_name="{\"color\":\"dark_red\",\"italic\":true,\"text\":\"Super Bucket\"}",item_model="bucket",consumable={nutrition:0,saturation:0,consume_seconds:1000000,can_always_eat:true},max_stack_size=1]

playsound minecraft:entity.glow_squid.squirt master @s

scoreboard players set @s iamcal.cooldown 20