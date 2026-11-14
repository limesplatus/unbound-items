scoreboard players set @s unbound_count -999
playsound minecraft:block.sculk_shrieker.shriek neutral @a[distance=..64] ~ ~ ~ .2 2


playsound minecraft:entity.vex.hurt neutral @a[distance=..64] ~ ~ ~ 1 .5
playsound minecraft:entity.vex.hurt neutral @a[distance=..64] ~ ~ ~ 1 .5
playsound minecraft:entity.vex.hurt neutral @a[distance=..64] ~ ~ ~ 1 .5

data modify entity @s start_interpolation set value 2
data modify entity @s interpolation_duration set value 10
data modify entity @s transformation.left_rotation set value [0.0,0.0,0.691,0.723]


execute on vehicle run kill @s