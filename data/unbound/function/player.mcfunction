
#reset attribute stats
attribute @s movement_speed modifier remove unbound:spectre_boots_speed
attribute @s jump_strength modifier remove unbound:rabbit_boots_jump
attribute @s attack_damage modifier remove unbound:necrotic_amulet_attack_damage

# amulets, bone wand, magnet, radar
execute if entity @s[predicate=unbound:equipped/hand_equippable] run function unbound:hand_item

#spectre
execute if entity @s[predicate=unbound:equipped/spectre_boots] run function unbound:spectre_boots/a_main

#strider boots
execute if entity @s[predicate=unbound:equipped/strider_boots] run function unbound:strider_boots/a_main

#rabbit
execute if entity @s[predicate=unbound:equipped/rabbit_boots] run function unbound:rabbit_boots/a_main

#hood
execute if predicate unbound:tick/20 run function unbound:hood/a_main

#phantom cloak
execute if entity @s[predicate=unbound:equipped/phantom_cloak] run function unbound:phantom_cloak/a_main

#farmer hat
execute if predicate unbound:tick/20 as @e[distance=..48,type=zombie,tag=unbound_zombie_decreased_range] run function unbound:farmer_hat/zombie_remove
execute if predicate unbound:tick/20 if entity @s[predicate=unbound:equipped/farmer_hat] run function unbound:farmer_hat/a_main

execute if entity @s[advancements={unbound:technical/place/crop=true}] run function unbound:farmer_hat/raycast

advancement revoke @s[predicate=!unbound:equipped/amulet_offhand] only unbound:technical/inventory_changed_jigsaw



execute as @e[distance=..16,type=piglin,tag=unbound_piglin_bartering] at @s run function unbound:other/barter/piglin

execute if score @s unbound_fire_time_on_fire matches 0.. run function unbound:amulets/fire/timer
execute if score @s unbound_cloak_dash matches 0.. run function unbound:phantom_cloak/dash_events
execute if score @s unbound_sea_amulet_dash matches 0.. run function unbound:amulets/sea/events
execute if score @s unbound_strider_boots matches 0.. run function unbound:strider_boots/events_jump


    advancement revoke @s only unbound:technical/player_attacked_mob_with_phantom_cloak

advancement revoke @s through unbound:technical/kill_mob

scoreboard players set @s unbound_jump 0

advancement revoke @s only unbound:technical/use/magnet


execute if entity @s[advancements={unbound:chest/open=true}] run function #unbound:open_loot_container

scoreboard players reset @s unbound_right_click

execute if entity @s[advancements={unbound:technical/craft_smithing_sculk_radar_without_items=true}] run function unbound:sculk_radar/craft_without_nbt

execute if entity @s[advancements={unbound:technical/craft/any=true}] run function unbound:other/craft

execute anchored eyes positioned ^ ^ ^ as @e[distance=..16,type=arrow,tag=!unbound_spawn_checked] run function unbound:mob/phantom_rider/arrow/check
