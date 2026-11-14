scoreboard players add @s unbound_mob_anim 1

execute if score @s unbound_mob_anim matches 1..10 run particle firework ~ ~1 ~ 0 0 0 .15 5 force @a[distance=..64]
particle large_smoke ~ ~1 ~ 0 0 0 .15 1 force @a[distance=..64]


execute if score @s unbound_mob_anim matches 10 run playsound entity.creeper.primed hostile @a[distance=..32] ~ ~ ~ 1.5 1.5
execute if score @s unbound_mob_anim matches 15 run playsound entity.firework_rocket.launch hostile @a[distance=..32] ~ ~ ~ .6 2

execute if score @s unbound_mob_anim matches 15 run playsound entity.breeze.whirl hostile @a[distance=..32] ~ ~ ~ 1.5 1
execute if score @s unbound_mob_anim matches 20 run playsound entity.breeze.whirl hostile @a[distance=..32] ~ ~ ~ 1.5 .5
execute if score @s unbound_mob_anim matches 25 run playsound entity.breeze.charge hostile @a[distance=..32] ~ ~ ~ 1.5 1.
