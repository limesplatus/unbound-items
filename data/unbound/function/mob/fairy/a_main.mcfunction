
execute rotated as @n[type=allay,distance=..1,tag=unbound_fairy] run rotate @s ~ ~10

execute if predicate unbound:chance/10_percent run particle minecraft:ominous_spawning ~ ~ ~ .3 .3 .3 0 1

execute if predicate unbound:chance/1_percent run particle wax_off ~ ~ ~ 0 0 0 5 2 force @a[distance=..64]

schedule function unbound:mob/fairy/a_loop_1t 1t

execute unless predicate {type:"entity_properties",entity:"this",predicate:{"vehicle":{}}} run kill @s

execute if predicate unbound:chance/20_percent run function unbound:mob/fairy/ambient

# light up mechanic

# timer
execute on vehicle if score @s unbound_fairy_lit matches 1.. run scoreboard players remove @s unbound_fairy_lit 1


#ore
execute on vehicle if predicate unbound:tick/4 if score @s unbound_fairy_lit matches 1.. run function unbound:mob/fairy/can_light_ores

#flowers light up
execute if block ~ ~-2 ~ #unbound:flowers run function unbound:mob/fairy/light/find
execute if block ~ ~-1 ~ #unbound:flowers run function unbound:mob/fairy/light/find
execute if block ~ ~ ~ #unbound:flowers run function unbound:mob/fairy/light/find

##


# give fairy an item
execute on vehicle at @s if items entity @s weapon.mainhand glass_bottle run function unbound:mob/fairy/item_given_glass_bottle



# give fairy an item (AMETHYST)
execute on vehicle unless score @s unbound_fairy_lit matches 4800.. at @s if items entity @s weapon.mainhand amethyst_shard run function unbound:mob/fairy/item_given_amethyst_shard

execute on vehicle at @s if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand glass_bottle run function unbound:mob/fairy/item_given_drop

#hurt
execute on vehicle if entity @s[nbt={HurtTime:10s}] on passengers run function unbound:mob/fairy/hurt
execute if score @s unbound_count matches -999.. run function unbound:mob/fairy/hurt_time

execute if predicate unbound:tick/20 on vehicle if entity @s[nbt={leash:{}}] run tag @s add unbound_leashed
execute if predicate unbound:tick/20 on vehicle if entity @s[nbt=!{leash:{}},tag=unbound_leashed] run function unbound:mob/fairy/new_home_pos


execute if predicate unbound:clock/5 if block ~ ~-5 ~ #unbound:permeable if block ~ ~-4 ~ #unbound:permeable if block ~ ~-3 ~ #unbound:permeable if block ~ ~-2 ~ #unbound:permeable on vehicle run data modify entity @s Motion[1] set value -0.2


execute unless score @s unbound_count matches ..0 if predicate unbound:clock/5 on vehicle if predicate unbound:player/burning on passengers run function unbound:mob/fairy/death