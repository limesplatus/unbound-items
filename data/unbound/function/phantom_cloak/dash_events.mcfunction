scoreboard players add @s unbound_cloak_dash 1

#execute if score @s unbound_cloak_dash matches 1..11 run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~1 ~ 0 0 0 .05 1 force @a[distance=..64]

execute if score @s unbound_cloak_dash matches 1..11 run particle dust_color_transition{from_color:[0.165,0.090,0.459],scale:1,to_color:[0.820,0.612,1.000]} ~ ~1 ~ .2 .2 .2 .05 2 force @a[distance=..64]


#

execute if score @s unbound_cloak_dash matches 1..11 run particle ash ~ ~1 ~ .3 .3 .3 .05 5 normal @a[distance=..64]

#execute if score @s unbound_cloak_dash matches 5..10 if entity @s[predicate=unbound:input/jump,tag=!unbound_cloak_mob_boost,advancements={unbound:technical/player_attacked_mob_with_phantom_cloak=true}] run function unbound:phantom_cloak/dash_mob_boost

#mob boost damage

#execute if score @s unbound_cloak_dash matches 5..10 if entity @s[predicate=unbound:input/jump,tag=!unbound_cloak_mob_boost,advancements={unbound:technical/player_attacked_mob_with_phantom_cloak=true}] run function unbound:phantom_cloak/dash_mob_boost



#movement
execute if entity @s[tag=unbound_cloak_back] rotated ~-180 ~ run function unbound:phantom_cloak/normal_or_water
execute if entity @s[tag=unbound_cloak_left] rotated ~-110 ~ run function unbound:phantom_cloak/normal_or_water
execute if entity @s[tag=unbound_cloak_right] rotated ~110 ~ run function unbound:phantom_cloak/normal_or_water
execute if entity @s[tag=!unbound_cloak_left,tag=!unbound_cloak_right,tag=!unbound_cloak_back] rotated ~ ~ run function unbound:phantom_cloak/normal_or_water

#execute if score @s unbound_cloak_dash matches 6 run attribute @s movement_speed modifier remove unbound:dash_speed

execute if score @s unbound_cloak_dash matches 30 run function unbound:phantom_cloak/dash_end