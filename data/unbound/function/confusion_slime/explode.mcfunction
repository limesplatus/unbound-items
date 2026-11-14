particle dust_color_transition{from_color:[0.608,0.310,1.000],scale:1,to_color:[0.071,0.165,1.000],scale:2} ~ ~1 ~ 1.5 1.5 1.5 1 50 force @a[distance=..128]


particle dust_color_transition{from_color:[0.608,0.310,1.000],scale:1,to_color:[0.071,0.165,1.000],scale:3} ~ ~ ~ .5 .3 .5 1 10 force @a[distance=..128]

particle explosion ~ ~.2 ~ 0 0 0 0 1 force @a[distance=..128]



playsound minecraft:entity.slime.death block @a[distance=..64] ~ ~ ~ 1.5 .6


playsound minecraft:entity.breeze.land block @a[distance=..64] ~ ~ ~ 1.5 .5
playsound minecraft:entity.breeze.land block @a[distance=..64] ~ ~ ~ 1.5 .5
playsound minecraft:entity.breeze.death block @a[distance=..64] ~ ~ ~ .5 .8



effect give @e[distance=..5,type=!#unbound:misc] nausea 10 1 true
effect give @e[distance=..5,type=!#unbound:misc] slowness 2 2 false
execute as @e[distance=..5,type=!#unbound:non_confused_target] run function unbound:confusion_slime/confuse
execute as @e[distance=..5,type=!#unbound:misc] run damage @s 1 magic


tag @e[distance=..10,type=!#unbound:misc] remove unbound_confusion_slime_checked

kill @s