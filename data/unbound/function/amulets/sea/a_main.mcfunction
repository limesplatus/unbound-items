

# dash if swimming & jump input (or if weird desync on kill then just on jump after a kill within 10 seconds)
execute if entity @s[tag=!unbound_sea_amulet_dash_unavailable] if predicate unbound:input/jump if predicate unbound:player/swimming run function unbound:amulets/sea/dash
execute if entity @s[tag=!unbound_sea_amulet_dash_unavailable] if predicate unbound:input/jump if score @s unbound_sea_amulet_recently_took_oxygen matches 1.. run function unbound:amulets/sea/dash

execute if entity @s[tag=!unbound_sea_amulet_dash_unavailable] unless block ~ ~ ~ #unbound:water run item modify entity @s weapon.offhand {"type":"set_custom_model_data","floats":{mode:"replace_all",values:[4376030]}}

execute if entity @s[tag=!unbound_sea_amulet_dash_unavailable] if block ~ ~ ~ #unbound:water run item modify entity @s weapon.offhand {"type":"set_custom_model_data","floats":{mode:"replace_all",values:[4376031]}}

execute if predicate unbound:chance/20_percent unless predicate unbound:player/swimming anchored eyes positioned ^ ^ ^0 positioned ~ ~-1 ~ run particle sculk_charge_pop ^.4 ^ ^.2 .1 .1 .1 .02 1 force @a[distance=..32]
execute if predicate unbound:chance/20_percent if predicate unbound:player/swimming anchored eyes positioned ^ ^ ^0 run particle sculk_charge_pop ^.6 ^ ^.2 .1 .1 .1 .02 1 force @a[distance=..32]


execute if block ~ ~ ~ #unbound:water if entity @s[advancements={unbound:technical/kill_mob=true}] run function unbound:amulets/sea/kill_mob
execute if block ~ ~ ~ #unbound:water if entity @s[advancements={unbound:technical/hurt_mob=true}] run function unbound:amulets/sea/hurt_mob


execute if score @s unbound_sea_amulet_recently_took_oxygen matches 1.. run scoreboard players remove @s unbound_sea_amulet_recently_took_oxygen 1
