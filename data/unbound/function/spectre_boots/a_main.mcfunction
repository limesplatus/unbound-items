
execute if score 5tick unbound_clock matches 1 run function unbound:spectre_boots/rotation_math

#if sprinting // if rotation is barely changing
execute if predicate unbound:player/is_sprinting_not_flying unless score @s unbound_spectre_time matches 0.. if score @s unbound_rotation_po matches -10..10 run scoreboard players add @s unbound_spectre_time 0


#sequence events
execute if score @s unbound_spectre_time matches 0.. run function unbound:spectre_boots/sprinting

execute if score @s unbound_spectre_durability matches 6000.. run function unbound:spectre_boots/remove_1_durab