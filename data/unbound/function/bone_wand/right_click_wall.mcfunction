tag @s add unbound_bone_wand_right_clicked

execute positioned ~ ~ ~ if block ~ ~ ~ #unbound:bone_wand_replaceable run function unbound:bone_wand/right_click
execute positioned ~ ~1 ~ if block ~ ~ ~ #unbound:bone_wand_replaceable run function unbound:bone_wand/right_click


execute as @s[tag=unbound_tip.bone_wand_1,tag=!unbound_tip.bone_wand_2] run tag @s add unbound_tip.bone_wand_2