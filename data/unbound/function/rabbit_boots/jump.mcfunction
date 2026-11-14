
attribute @s jump_strength modifier remove unbound:rabbit_boots_jump

#particle cloud ~ ~ ~ .2 0 .2 0 1 force @a[distance=..32]
playsound minecraft:block.dripstone_block.step player @a[distance=..8] ~ ~ ~ .25 1.5 0.1
playsound minecraft:block.wool.step player @a[distance=..8] ~ ~ ~ .15 1.5 0.1


execute run playsound entity.rabbit.jump player @a[distance=..8] ~ ~ ~ .3 1.3 0.1
execute align y positioned ~ ~.2 ~ run function unbound:rabbit_boots/wave

scoreboard players reset @s unbound_rabbit_time
