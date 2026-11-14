
execute as @n[distance=..3,type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:conduit_power"}]}}] at @s positioned ~ ~1 ~ run function unbound:mob/confetti_creeper/explode
execute if entity @s[tag=unbound_confetti_creeper_charged] as @n[distance=..3,type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:conduit_power"}]}}] at @s positioned ~ ~1 ~ run function unbound:mob/confetti_creeper/explode_charged

kill @n[type=area_effect_cloud]
kill @s