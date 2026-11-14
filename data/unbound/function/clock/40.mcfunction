

execute store result score doMobLoot unbound_storage run gamerule mob_drops
execute store result score spawn_mobs unbound_storage run gamerule spawn_mobs
execute store result score mob_griefing unbound_storage run gamerule mob_griefing

execute if predicate unbound:chance/10_percent as @e[type=item_display,tag=unbound_glow_slime_model] at @s positioned ~ ~-1 ~ unless entity @n[distance=..1,type=slime] run kill @s


## spawning
execute if score mob_spawns unbound_config matches 1 if score spawn_mobs unbound_storage matches 1 as @e[type=zombie_villager,tag=!unbound_spawn_checked,tag=!smithed.entity] at @s run function unbound:mob/zombie_villager_farmer_hat_chance with entity @s VillagerData

execute if score mob_spawns unbound_config matches 1 if score spawn_mobs unbound_storage matches 1 as @e[type=creeper,tag=!unbound_spawn_checked,tag=!smithed.entity] run function unbound:mob/confetti_glow_slime_spawn_chance

#spawn fairies
execute as @e[type=marker,tag=unbound_structure_fairy] at @s run function unbound:mob/fairy/summon_spawn

#######################

## SCHEDULE LOOP RESET

# incase schedule loop ticks fail in each entity, from e.x.
# - chunk unloading, server crash
# this will continue the loop regularly every 2 seconds just to make sure

execute as @e[type=item_display,tag=unbound_glow_slime_model] at @s run function unbound:mob/glow_slime/a_main
execute as @e[type=item_display,tag=unbound_confetti_creeper_model] at @s run function unbound:mob/confetti_creeper/a_main

execute as @e[type=item_display,tag=unbound_confusion_slime] at @s run function unbound:confusion_slime/a_main
execute as @e[type=item_display,tag=unbound_spectral_bottle] at @s run function unbound:spectral_bottle/entity
execute as @e[type=marker,tag=unbound_bone_wand_area] at @s run function unbound:bone_wand/areas

execute as @e[type=skeleton,tag=unbound_phantom_rider_skeleton] at @s run function unbound:mob/phantom_rider/a_main

execute as @e[type=item_display,tag=unbound_fairy_display] at @s run function unbound:mob/fairy/a_main

#######################

schedule function unbound:clock/40 40t
