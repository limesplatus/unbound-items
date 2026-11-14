


# bobber
kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]


# break
execute if entity @s[predicate=unbound:equipped/bone_wand,predicate=unbound:equipped/0_durability] run function unbound:bone_wand/durability_break

execute if entity @s[predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:equipped/0_durability_offhand] run function unbound:bone_wand/durability_break



#sneak detect (triple shift)

    #detect sneak
    execute if entity @s[predicate=unbound:player/sneaking,tag=!unbound_player_sneaking] run function unbound:bone_wand/sneak
    execute if entity @s[predicate=!unbound:player/sneaking,tag=unbound_player_sneaking] run tag @s remove unbound_player_sneaking

    #timer (triple click shift in 3 seconds)
    #break all
    execute if score @s unbound_bone_wand_sneak_timer matches 1.. run function unbound:bone_wand/sneak_timer





#wall sneak right click check
tag @s remove unbound_bone_wand_wall_mode
execute unless predicate unbound:player/moving if predicate unbound:player/sneaking run tag @s add unbound_bone_wand_wall_mode

### wall right click
execute as @s[scores={unbound_right_click=1..},tag=unbound_bone_wand_wall_mode] rotated ~ 0 positioned ^ ^ ^1.5 align zyx positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #unbound:bone_wand_replaceable run function unbound:bone_wand/right_click_wall

### right click
execute as @s[scores={unbound_right_click=1..},tag=!unbound_bone_wand_right_clicked] positioned ~ ~1 ~ positioned ^ ^ ^1.5 align zyx positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #unbound:bone_wand_replaceable run function unbound:bone_wand/right_click

tag @s remove unbound_bone_wand_right_clicked




# box preview
execute unless entity @s[tag=unbound_bone_wand_wall_mode] positioned ^ ^ ^1.5 align zyx positioned ~.5 ~1 ~.5 run function unbound:bone_wand/box

# box preview (wall mode)
execute if entity @s[tag=unbound_bone_wand_wall_mode] rotated ~ 0 positioned ^ ^ ^1.5 align zyx positioned ~.5 ~ ~.5 run function unbound:bone_wand/box_wall
