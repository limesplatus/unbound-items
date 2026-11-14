execute if predicate unbound:equipped/magnet_offhand run item modify entity @s weapon.offhand unbound:damage/magnet
execute if predicate unbound:equipped/magnet_mainhand run item modify entity @s weapon.mainhand unbound:damage/magnet

scoreboard players add @s unbound_magnet_time 0



tag @s add unbound_using_magnet