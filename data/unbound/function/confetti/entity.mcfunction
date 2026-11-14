


execute unless score @s unbound_count matches 30.. run scoreboard players add @s unbound_count 1



 scoreboard players add @s unbound_count2 1
execute store result storage unbound:storage confetti_delta.num float 0.1 run scoreboard players get @s unbound_count

#non ceiling
execute unless entity @s[tag=unbound_confetti_ceiling] run function unbound:confetti/particle with storage unbound:storage confetti_delta
#ceiling
execute if entity @s[tag=unbound_confetti_ceiling] run function unbound:confetti/particle_ceiling with storage unbound:storage confetti_delta

#particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]


execute unless block ~ ~.5 ~ #unbound:permeable run function unbound:confetti/hit_ceiling
execute unless block ~ ~-.5 ~ #unbound:permeable run data modify entity @s Motion[1] set value 0.2


execute if score @s unbound_count2 matches 30.. run data modify entity @s NoGravity set value 1b

execute if score @s unbound_count2 matches 100.. run kill @s
execute if entity @s[tag=unbound_confetti_ceiling] if score @s unbound_count2 matches 140.. run kill @s

schedule function unbound:confetti/a_loop_1t 1t replace