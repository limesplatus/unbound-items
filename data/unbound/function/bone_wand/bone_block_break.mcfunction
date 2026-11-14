
particle minecraft:poof ~ ~ ~ .3 .3 .3 .02 2 force @a[distance=..128]

particle block{block_state:"bone_block"} ~ ~ ~ .3 .3 .3 .2 40 normal @a[distance=..32]
fill ~ ~ ~ ~ ~ ~ air

execute if entity @s[tag=unbound_bone_wand_area_lava] run setblock ~ ~ ~ lava
execute if entity @s[tag=unbound_bone_wand_area_water] run setblock ~ ~ ~ water

playsound block.bone_block.break block @a[distance=..20] ~ ~ ~ 1 1

kill @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]
kill @s

