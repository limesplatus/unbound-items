playsound minecraft:entity.skeleton.death hostile @a[distance=..32] ~ ~ ~ .5 1.2
stopsound @a[distance=..32] hostile entity.skeleton.hurt
playsound minecraft:entity.stray.death hostile @a[distance=..32] ~ ~ ~ .5 1.1
playsound minecraft:block.soul_sand.break hostile @a[distance=..32] ~ ~ ~ .5 1.8

playsound minecraft:block.sculk.fall hostile @a[distance=..32] ~ ~ ~ 1 .8
playsound minecraft:block.sculk.break hostile @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:block.sculk.break hostile @a[distance=..32] ~ ~ ~ 1 .7

damage @s 9999 player_attack by @p[distance=..32]

particle sculk_soul ~ ~1 ~ 0 0 0 .2 20 force @a[distance=..32]
particle sculk_charge{roll:180} ~ ~1 ~ 0 0 0 .05 5 force @a[distance=..32]
