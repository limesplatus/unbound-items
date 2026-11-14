


scoreboard players add @s unbound_count 1


### if someone tries being sneaky and taking the bone block
execute if entity @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..2] run scoreboard players set @s unbound_count 120
execute if entity @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]



### bone block mined? gone?
execute unless block ~ ~ ~ bone_block run function unbound:bone_wand/bone_block_break


## break (no lure) - 3 seconds
## with lure enchant, offsets by 2 seconds
execute if entity @s[scores={unbound_count=60..}] unless score @s unbound_enchantlevel matches 1.. run function unbound:bone_wand/bone_block_break


### projecitle break
execute align zyx positioned ~-.01 ~-.01 ~-.01 if entity @n[dx=0.02,dy=0.5,dz=0.02,type=#impact_projectiles,distance=..3,nbt={inGround:1b}] positioned ~.01 ~.01 ~.01 run function unbound:bone_wand/projectile_break

schedule function unbound:bone_wand/areas_loop_1t 1t replace