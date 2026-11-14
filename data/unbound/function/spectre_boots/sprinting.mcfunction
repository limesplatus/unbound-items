scoreboard players add @s unbound_spectre_time 1
execute if score @s unbound_spectre_time matches 25.. run scoreboard players add @s unbound_spectre_durability 1

execute if score @s unbound_spectre_time matches 25 run playsound minecraft:entity.breeze.charge player @a[distance=..32] ~ ~ ~ .5 1.3
execute if score @s unbound_spectre_time matches 30 run function unbound:spectre_boots/sprinting_start_particle

execute if score @s unbound_spectre_time matches 30.. if score 4tick unbound_clock matches 1 anchored feet run function unbound:spectre_boots/sprinting_particle

execute if score @s unbound_spectre_time matches 30.. run particle small_gust ~ ~.4 ~ .4 .4 .4 .5 1 force @a[distance=..64]


#set speed
execute if score @s unbound_spectre_time matches 30.. run attribute @s movement_speed modifier add unbound:spectre_boots_speed 0.25 add_multiplied_total


####end

execute unless predicate unbound:player/move_left_right run function unbound:spectre_boots/end
execute unless score @s unbound_rotation_po matches -8..8 run function unbound:spectre_boots/end
execute unless predicate unbound:player/is_sprinting_not_flying run function unbound:spectre_boots/end