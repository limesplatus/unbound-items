
execute if score @s unbound_block_level matches 2..4 if predicate unbound:chance/80_percent run particle glow ~ ~ ~ 0 0 0 .02 1 force @a[distance=..32]
execute if score @s unbound_block_level matches 1 if predicate unbound:chance/40_percent run particle glow ~ ~ ~ 0 0 0 .02 1 force @a[distance=..32]

effect give @n[type=slime,distance=..1.5,tag=unbound_glow_lantern_cube] glowing 1 1 true

execute if predicate unbound:tick/20 run scoreboard players remove @s unbound_block_tick 1
execute if predicate unbound:tick/20 if score @s unbound_block_tick matches ..0 run function unbound:block/glow_lantern/lose_level