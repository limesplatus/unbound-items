scoreboard players add @s unbound_radar_timer 1


execute if score @s unbound_radar_timer matches 5.. if predicate unbound:equipped/sculk_radar_mainhand run item modify entity @s weapon unbound:sculk_radar3
execute if score @s unbound_radar_timer matches 5.. if predicate unbound:equipped/sculk_radar_offhand run item modify entity @s weapon.offhand unbound:sculk_radar3

execute if score @s unbound_radar_timer matches 15.. if predicate unbound:equipped/sculk_radar_mainhand run item modify entity @s weapon unbound:sculk_radar2
execute if score @s unbound_radar_timer matches 15.. if predicate unbound:equipped/sculk_radar_offhand run item modify entity @s weapon.offhand unbound:sculk_radar2

execute if score @s unbound_radar_timer matches 30.. if predicate unbound:equipped/sculk_radar_mainhand run item modify entity @s weapon unbound:sculk_radar1
execute if score @s unbound_radar_timer matches 30.. if predicate unbound:equipped/sculk_radar_offhand run item modify entity @s weapon.offhand unbound:sculk_radar1


execute if score @s unbound_radar_timer matches 30.. run scoreboard players reset @s unbound_radar_timer
