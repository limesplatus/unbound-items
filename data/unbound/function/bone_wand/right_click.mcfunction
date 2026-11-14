



summon minecraft:marker ~ ~ ~ {Tags:["smithed.entity","unbound_bone_wand_area","","unbound_marker","unbound_temp2"]}

execute if predicate {type:"location_check",predicate:{"fluid":{fluids:"water"}}} run tag @n[type=marker,tag=unbound_bone_wand_area,distance=..0.01] add unbound_bone_wand_area_water
execute if predicate {type:"location_check",predicate:{"fluid":{fluids:"lava"}}} run tag @n[type=marker,tag=unbound_bone_wand_area,distance=..0.01] add unbound_bone_wand_area_lava



execute if block ~ ~ ~ #unbound:bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #unbound:bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ bone_block
particle cloud ~ ~ ~ .6 .6 .6 .02 10 normal
playsound block.bone_block.place block @a[distance=..32] ~ ~ ~ 1 .8

execute as @n[type=marker,tag=unbound_temp2] at @s run function unbound:bone_wand/areas

kill @e[distance=..0.5,type=#arrows]


#### MAINHAND

    # level 1 enchant
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/bone_enchant1] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 10

    # level 2 enchant
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/bone_enchant2] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 20

    # level 3 enchant
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/bone_enchant3] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 30
    
    # level 4(?) enchant?? adds an additional 10 ticks for having both luck of the sea and lure at the same time
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/bone_enchant3_max] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 10


#### OFFHAND
    # if both mainhand and offhand, only mainhand is counted

    # level 1 enchant
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/bone_enchant1_offhand] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 10

    # level 2 enchant
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/bone_enchant2_offhand] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 20

    # level 3 enchant
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/bone_enchant3_offhand] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 30
    
    # level 4(?) enchant?? adds an additional 10 ticks for having both luck of the sea and lure at the same time at max level both
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/bone_enchant3_max] run scoreboard players remove @n[type=marker,tag=unbound_temp2] unbound_count 10



# store UUID's
execute store result score @n[distance=..1.5,type=marker,tag=unbound_temp2] unbound_uuid1 run data get entity @s UUID[0]
execute store result score @n[distance=..1.5,type=marker,tag=unbound_temp2] unbound_uuid2 run data get entity @s UUID[1]
execute store result score @n[distance=..1.5,type=marker,tag=unbound_temp2] unbound_uuid3 run data get entity @s UUID[2]
execute store result score @n[distance=..1.5,type=marker,tag=unbound_temp2] unbound_uuid4 run data get entity @s UUID[3]

#########################################################################################################

# right click durability
execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=!unbound:enchant/unbreaking1-3] run item modify entity @s[gamemode=!creative] weapon.mainhand unbound:damage/bone_wand

    # unbreaking 1
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/unbreaking1] if predicate unbound:chance/66_percent run item modify entity @s[gamemode=!creative] weapon.mainhand unbound:damage/bone_wand

    # unbreaking 2
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/unbreaking2] if predicate unbound:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand unbound:damage/bone_wand

    # unbreaking 3
    execute as @s[predicate=unbound:equipped/bone_wand_mainhand,predicate=unbound:enchant/unbreaking3] if predicate unbound:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand unbound:damage/bone_wand




#offhand durability
execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=!unbound:enchant/unbreaking1-3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand unbound:damage/bone_wand

    # unbreaking 1
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/unbreaking1_offhand] if predicate unbound:chance/66_percent run item modify entity @s[gamemode=!creative] weapon.offhand unbound:damage/bone_wand

    # unbreaking 2
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/unbreaking2_offhand] if predicate unbound:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand unbound:damage/bone_wand

    # unbreaking 3
    execute as @s[predicate=!unbound:equipped/bone_wand_both,predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:enchant/unbreaking3_offhand] if predicate unbound:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand unbound:damage/bone_wand


tag @s add unbound_tip.bone_wand_1

tag @n[type=marker,tag=unbound_temp2] remove unbound_temp2