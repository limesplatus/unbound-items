

#reset calibration mode check
execute if score 20tick unbound_clock matches 1 run function unbound:sculk_radar/check_mode





#players & mobs
execute if score 2tick unbound_clock matches 1 if score @s unbound_radar_calibration_mode matches 1 as @n[distance=0.001..25,type=!#unbound:misc,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run tag @s add unbound_sculk_radar_target

#mobs
execute if score 2tick unbound_clock matches 1 if score @s unbound_radar_calibration_mode matches 2 as @n[distance=0.001..25,type=!player,type=!#unbound:misc,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run tag @s add unbound_sculk_radar_target

#players
execute if score 2tick unbound_clock matches 1 if score @s unbound_radar_calibration_mode matches 3 as @n[distance=0.001..25,type=player,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run tag @s add unbound_sculk_radar_target

#items
execute if score 2tick unbound_clock matches 1 if score @s unbound_radar_calibration_mode matches 4 as @n[distance=0.001..25,type=item,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run tag @s add unbound_sculk_radar_target





execute if entity @e[distance=0.001..24,type=!#unbound:misc_radar,tag=!refresh_entity_misc,tag=!unbound_non_detectable,tag=unbound_sculk_radar_target] run function unbound:sculk_radar/entity_any

tag @n[distance=0.001..25,type=!#unbound:misc_radar,tag=!refresh_entity_misc,tag=!unbound_non_detectable] remove unbound_sculk_radar_target



execute if score @s unbound_radar_timer matches 0.. run function unbound:sculk_radar/timer

