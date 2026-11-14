


playsound entity.phantom.ambient player @a[distance=..32] ~ ~ ~ 1 .7
playsound entity.vex.charge player @a[distance=..32] ~ ~ ~ 1 2

#effects
effect give @s invisibility 4 0 false
effect give @s speed 4 1 false

#start timer
scoreboard players add @s unbound_hood_time 0


execute unless data storage unbound:storage hood_inventory run data modify storage unbound:storage hood_inventory set value []
function unbound:hood/storage_set with entity @s



advancement revoke @s only unbound:technical/entity_attacked_player_hood