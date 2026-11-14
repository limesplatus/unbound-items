attribute @s movement_speed modifier remove unbound:spectre_boots_speed

effect give @s jump_boost 1 0 true
effect give @s slowness 1 0 true

playsound minecraft:entity.breeze.wind_burst player @a[distance=..32] ~ ~ ~ .2 1.5
playsound minecraft:entity.breeze.inhale player @a[distance=..32] ~ ~ ~ .3 2
playsound block.wool.place player @a[distance=..32] ~ ~ ~ .8 1.2
particle poof ~ ~ ~ .3 .2 .3 .1 25 force @a[distance=..64]


execute if predicate unbound:equipped/spectre_boots run item modify entity @s armor.feet unbound:spectre_boots