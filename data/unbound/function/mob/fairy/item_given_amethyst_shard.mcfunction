


particle minecraft:ominous_spawning ~ ~ ~ 3 3 3 0 20
particle wax_off ~ ~.2 ~ 0 0 0 15 20 force @a[distance=..64]

playsound entity.allay.item_taken player @a[distance=..32] ~ ~ ~ .3 2
playsound minecraft:block.amethyst_block.step player @a[distance=..32] ~ ~ ~ 1 1.2
playsound minecraft:block.amethyst_block.step player @a[distance=..32] ~ ~ ~ 1 1.7


execute if score @s unbound_fairy_lit matches 3600.. run playsound minecraft:block.amethyst_block.step player @a[distance=..32] ~ ~ ~ 1 .5

playsound minecraft:block.trial_spawner.spawn_item_begin player @a[distance=..32] ~ ~ ~ .5 2

particle wax_off ~ ~ ~ .3 .3 .3 5 5 force @a[distance=..64]




execute positioned ~ ~.005 ~ run function unbound:mob/fairy/summon
execute positioned ~ ~.005 ~ run scoreboard players operation @n[type=allay,tag=unbound_fairy] unbound_fairy_lit = @s unbound_fairy_lit
execute positioned ~ ~.005 ~ run scoreboard players add @n[type=allay,tag=unbound_fairy] unbound_fairy_lit 1200


execute on passengers run kill @s

tp @s ~ -400 ~
kill @s
