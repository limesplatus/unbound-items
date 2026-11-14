#set bone block air
execute as @e[type=marker,tag=unbound_bone_wand_area] if score @s unbound_uuid1 = @p unbound_uuid1 if score @s unbound_uuid2 = @p unbound_uuid2 if score @s unbound_uuid3 = @p unbound_uuid3 if score @s unbound_uuid4 = @p unbound_uuid4 at @s run scoreboard players set @s unbound_count 60

#weapon tip

playsound minecraft:block.deepslate_tiles.break player @a[distance=..25] ~ ~ ~ .3 .5
playsound minecraft:block.bone_block.break player @a[distance=..25] ~ ~ ~ .5 .5

scoreboard players reset @s unbound_bone_wand_sneak_timer
scoreboard players reset @s unbound_bone_wand_sneak_count

particle minecraft:poof ~ ~.5 ~ .3 .4 .3 .05 12 force @a[distance=..32]