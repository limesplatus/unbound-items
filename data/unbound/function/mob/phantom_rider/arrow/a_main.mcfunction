
particle electric_spark ~ ~-.75 ~ 0 0 0 1 3 force @a[distance=..128]

execute if score @s unbound_count matches -480 run data modify entity @n[type=arrow,distance=..1,tag=unbound_shock_arrow_arrow] NoGravity set value 0b

execute unless score @s unbound_count matches 0.. if predicate unbound:tick/4 if entity @n[type=arrow,distance=..2,nbt={inGround:1b},tag=unbound_shock_arrow_arrow] positioned ~ ~-1 ~ run function unbound:mob/phantom_rider/arrow/strike

execute unless score @s unbound_count matches 0.. if predicate unbound:tick/4 unless entity @n[type=arrow,distance=..2,tag=unbound_shock_arrow_arrow] at @n[type=!#unbound:misc,nbt=!{HurtTime:0s},distance=..4] positioned ~ ~0.000 ~ run function unbound:mob/phantom_rider/arrow/strike

execute unless score @s unbound_count matches 0.. if predicate unbound:tick/4 unless entity @n[type=arrow,distance=..2,tag=unbound_shock_arrow_arrow] unless entity @n[type=!#unbound:misc,nbt=!{HurtTime:0s},distance=..4] positioned ~ ~-1 ~ run function unbound:mob/phantom_rider/arrow/strike

####

# arrow striked


execute if score @s unbound_count matches 0.. positioned ~ ~-1 ~ at @e[tag=unbound_shocked,distance=..4] run particle electric_spark ~ ~1 ~ .5 .5 .5 0.1 3 force @a[distance=..128]
execute if score @s unbound_count matches 0..15 positioned ~ ~-1 ~ as @e[tag=unbound_shocked,distance=..4,type=!#unbound:misc] run damage @s 5 lightning_bolt

execute if score @s unbound_count matches -2147483648..2147483647 run scoreboard players add @s unbound_count 1

execute if score @s unbound_count matches 0.. positioned ~ ~-1 ~ as @e[tag=unbound_shocked,distance=..2] run tp @s @s
execute if score @s unbound_count matches 40.. positioned ~ ~-1 ~ as @e[tag=unbound_shocked,distance=..2] run data modify entity @s NoAI set value 0b
execute if score @s unbound_count matches 40.. positioned ~ ~-1 ~ run tag @e[tag=unbound_shocked,distance=..2] remove unbound_shocked
execute if score @s unbound_count matches 40.. run kill @s

schedule function unbound:mob/phantom_rider/arrow/a_loop_1t 1t