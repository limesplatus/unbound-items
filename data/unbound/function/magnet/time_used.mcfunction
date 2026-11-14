scoreboard players add @s unbound_magnet_time 1

execute if score @s unbound_magnet_time matches 20.. if predicate unbound:equipped/magnet_offhand run item modify entity @s weapon.offhand unbound:damage/magnet
execute if score @s unbound_magnet_time matches 20.. if predicate unbound:equipped/magnet_mainhand run item modify entity @s weapon.mainhand unbound:damage/magnet
 

execute if score @s unbound_magnet_time matches 20.. run scoreboard players set @s unbound_magnet_time 0