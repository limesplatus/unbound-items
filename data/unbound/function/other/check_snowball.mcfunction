
tag @s add unbound_current_snowball

execute if entity @n[distance=..256,tag=world_protected] run kill @s
execute if entity @n[distance=..256,tag=world_protected] run return fail

execute positioned ~.4 ~ ~ if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser
execute positioned ~-.4 ~ ~ if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser
execute positioned ~ ~ ~.4 if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser
execute positioned ~ ~ ~-.4 if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser
execute positioned ~ ~.4 ~ if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser
execute positioned ~ ~-.4 ~ if block ~ ~ ~ dispenser run function unbound:other/check_snowball_dispenser


execute unless entity @s[tag=unbound_from_dispenser] on origin run tag @s add world_entityowner



execute at @s if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_confusion_slime:1b}}}}] run function unbound:confusion_slime/summon
execute at @s if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_bomb:1b}}}}] run function unbound:bomb/summon
execute at @s if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_confetti:1b}}}}] run function unbound:confetti/summon
execute at @s if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_spectral_bottle:1b}}}}] run function unbound:spectral_bottle/summon

execute unless entity @n[distance=..256,tag=world_protected] at @s[tag=unbound_from_dispenser] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_glow_slime_ball:1b}}}}] run function unbound:block/glow_lantern/find_lantern
execute unless entity @n[distance=..256,type=marker,tag=world_protected] at @s[tag=!unbound_from_dispenser] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{unbound_glow_slime_ball:1b}}}}] as @p[distance=..3] at @s anchored eyes run function unbound:block/glow_lantern/find_lantern

tag @s remove unbound_current_snowball

tag @a[tag=world_entityowner] remove world_entityowner

kill @s[type=snowball,tag=!unbound_confetti]


