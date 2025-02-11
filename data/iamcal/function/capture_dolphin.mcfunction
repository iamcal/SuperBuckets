#say "Capturing Dolphin"

teleport @e[tag=find_looking.result,type=dolphin] ~ ~-1000 ~
kill @e[tag=find_looking.result,type=dolphin]

item replace entity @s weapon.mainhand with minecraft:emerald[custom_data={"super_bucket": "dolphin"},enchantment_glint_override=true,item_name="{\"color\":\"dark_red\",\"italic\":true,\"text\":\"Super Bucket (Dolphin)\"}",item_model="bucket",consumable={nutrition:0,saturation:0,consume_seconds:1000000,can_always_eat:true},max_stack_size=1]

playsound minecraft:entity.dolphin.jump master @s

scoreboard players set @s iamcal.cooldown 20
