

tag @s add unbound_current_entity

execute if entity @s[nbt={pickup:2b}] at @s on origin unless entity @s[gamemode=creative] run tag @n[distance=..0.1,tag=unbound_current_entity] add unbound_shock_arrow_cancel


execute unless entity @s[tag=unbound_shock_arrow_cancel] if entity @s[nbt={data:{unbound_shock_arrow:1b}}] at @s run function unbound:mob/phantom_rider/arrow/init

tag @s add unbound_spawn_checked



tag @s remove unbound_current_entity