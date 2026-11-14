
execute if predicate unbound:equipped/fire_amulet_mainhand run item modify entity @s weapon unbound:fire_amulet1
execute if predicate unbound:equipped/fire_amulet_offhand run item modify entity @s weapon.offhand unbound:fire_amulet1

scoreboard players reset @s unbound_fire_invul
tag @s remove unbound_fire_amulet_noRes
scoreboard players reset @s unbound_fire_time_on_fire