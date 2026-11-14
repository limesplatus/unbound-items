

# check target
execute if predicate unbound:tick/20 run tag @s remove unbound_has_target
execute if predicate unbound:tick/20 on target run tag @s add unbound_target
execute if predicate unbound:tick/20 if entity @n[distance=..64,type=!#unbound:misc,tag=unbound_target] run tag @s add unbound_has_target
execute if predicate unbound:tick/20 on target run tag @s remove unbound_target

# timer
execute unless score @s unbound_count matches 101.. run scoreboard players add @s unbound_count 1


# go upwards and remove invulnerability
execute if score @s unbound_count matches 40 run data modify entity @s Invulnerable set value 0b
execute if score @s unbound_count matches 40 as @e[distance=..3,type=!#unbound:misc,tag=unbound_phantom_rider_phantom] run data modify entity @s Invulnerable set value 0b
execute if score @s unbound_count matches 40 as @e[distance=..3,type=!#unbound:misc,tag=unbound_phantom_rider_phantom] run data modify entity @s Invulnerable set value 0b
execute if score @s unbound_count matches ..40 on vehicle on vehicle at @s run data modify entity @s Motion[1] set value 0.4
execute if score @s unbound_count matches 41..60 on vehicle on vehicle at @s run data modify entity @s Motion[1] set value 0.15

#

#particle
execute on vehicle on vehicle positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[0.925,0.259,1.000],to_color:[0.039,0.682,0.812],scale:1} ^1.5 ^ ^ .3 .1 .3 0 2 force @a[distance=..64]
execute on vehicle on vehicle positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[0.925,0.259,1.000],to_color:[0.039,0.682,0.812],scale:1} ^-1.5 ^ ^ .3 .1 .3 0 2 force @a[distance=..64]

# summon / throw some bombs
execute if entity @s[tag=unbound_has_target] if block ~ ~-1 ~ #unbound:permeable if block ~ ~-3 ~ #unbound:permeable if block ~ ~-5 ~ #unbound:permeable as @e[distance=..2,type=arrow,limit=3] on origin if entity @s[distance=..0.001] rotated ~ 90 run function unbound:mob/phantom_rider/summon_bomb

execute unless entity @s[tag=unbound_phantom_rider_alone] unless predicate {type:"entity_properties",entity:"this",predicate:{"vehicle":{"entity_type":"item_display","vehicle":{"entity_type":"phantom"}}}} run function unbound:mob/phantom_rider/phantom_killed

execute if entity @s[tag=unbound_phantom_rider_alone] unless block ~ ~-2 ~ #unbound:permeable run effect give @s slow_falling 1 1 false


schedule function unbound:mob/phantom_rider/a_loop_1t 1t


