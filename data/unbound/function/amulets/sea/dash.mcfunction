
# water is special 

#effect give @s[distance=..2.5] water_breathing 1 5 false

function unbound:amulets/sea/dash_set_enchant

scoreboard players set @s unbound_sea_amulet_dash 0

item modify entity @s weapon.offhand {"type":"set_custom_model_data","floats":{mode:"replace_all",values:[4376032]}}

#effect give @s dolphins_grace 1 0 true
effect give @s speed 2 0 true

particle effect ~ ~.5 ~ .7 .7 .7 .1 40 force @a[distance=..64]

particle poof ~ ~.5 ~ .3 .5 .3 .2 5 force @a[distance=..32]

function unbound:amulets/sea/wave_particle_vertical

playsound minecraft:ambient.underwater.enter player @a[distance=..32] ~ ~ ~ 1 1

playsound minecraft:ambient.underwater.enter player @a[distance=..30] ~ ~ ~ .4 .8
#playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ .4 1.5


playsound minecraft:entity.generic.swim player @a[distance=..30] ~ ~ ~ 1.25 .8

playsound minecraft:entity.generic.swim player @a[distance=..30] ~ ~ ~ 1.25 1.4

playsound minecraft:entity.dolphin.splash player @a[distance=..30] ~ ~ ~ 1.25 1.5

playsound minecraft:item.trident.riptide_3 player @a[distance=..20] ~ ~ ~ .3 1.1 .08

tag @s add unbound_sea_amulet_dash_unavailable


execute if predicate unbound:input/sneak run tag @s add unbound_sea_amulet_back
execute if predicate unbound:input/back run tag @s add unbound_sea_amulet_back
execute if predicate unbound:input/left run tag @s add unbound_sea_amulet_left
execute if predicate unbound:input/right run tag @s add unbound_sea_amulet_right
execute unless entity @s[tag=unbound_sea_amulet_back] if predicate unbound:input/forward run tag @s add unbound_sea_amulet_forward
execute if predicate unbound:input/none run tag @s add unbound_sea_amulet_forward

