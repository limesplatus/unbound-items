

playsound minecraft:entity.breeze.inhale player @a[distance=..32] ~ ~ ~ .08 2

playsound block.sand.place player @a[distance=..32] ~ ~ ~ .3 2


#playsound block.wool.place player @a[distance=..32] ~ ~ ~ .6 1.3

particle poof ~ ~.1 ~ .2 .1 .2 .05 2 force @a[distance=..64]

particle poof ~ ~.1 ~ .2 .1 .2 .1 2 force @a[distance=..64]



#execute unless predicate unbound:player/beacon_speed run effect give @s speed 1 0
#execute if predicate unbound:player/beacon_speed_1 run effect give @s speed 4 1
#execute if predicate unbound:player/beacon_speed_2 run effect give @s speed 4 2

function unbound:spectre_boots/random_push_poof_back