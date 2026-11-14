summon marker ~ ~ ~ {Tags:["smithed.entity","unbound_shock_arrow_current","unbound_shock_arrow"]}

scoreboard players set @n[type=marker,tag=unbound_shock_arrow_current,distance=..3] unbound_count -500

tag @s add unbound_shock_arrow_arrow

execute as @n[type=marker,tag=unbound_shock_arrow_current] at @s run function unbound:mob/phantom_rider/arrow/a_main



ride @n[type=marker,tag=unbound_shock_arrow_current] mount @s

tag @n[type=marker,tag=unbound_shock_arrow_current,distance=..2] remove unbound_shock_arrow_current

data modify entity @s NoGravity set value 1b