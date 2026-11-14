



execute if predicate unbound:equipped/fire_amulet_mainhand run item modify entity @s weapon unbound:fire_amulet3
execute if predicate unbound:equipped/fire_amulet_offhand run item modify entity @s weapon.offhand unbound:fire_amulet3



tag @s add unbound_fire_amulet_noRes
scoreboard players set @s unbound_fire_time_on_fire 1080