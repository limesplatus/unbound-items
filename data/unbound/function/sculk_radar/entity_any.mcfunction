
execute unless score @s unbound_radar_timer matches 0.. if predicate unbound:equipped/sculk_radar_mainhand run item modify entity @s weapon unbound:sculk_radar2
execute unless score @s unbound_radar_timer matches 0.. if predicate unbound:equipped/sculk_radar_offhand run item modify entity @s weapon.offhand unbound:sculk_radar2



execute if entity @n[distance=16..24,tag=unbound_sculk_radar_target,type=!#unbound:misc_radar,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run function unbound:sculk_radar/entity_close_1

execute if entity @n[distance=8..16,tag=unbound_sculk_radar_target,type=!#unbound:misc_radar,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run function unbound:sculk_radar/entity_close_2

execute if entity @n[distance=0.001..8,tag=unbound_sculk_radar_target,type=!#unbound:misc_radar,tag=!refresh_entity_misc,tag=!unbound_non_detectable] run function unbound:sculk_radar/entity_close_3

