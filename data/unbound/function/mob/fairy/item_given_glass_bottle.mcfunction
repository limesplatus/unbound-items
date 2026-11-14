playsound item.bottle.fill player @a[distance=..32] ~ ~ ~ .4 1.5
playsound entity.allay.item_taken player @a[distance=..32] ~ ~ ~ .3 2
playsound minecraft:block.amethyst_block.step player @a[distance=..32] ~ ~ ~ 1 1.5

playsound minecraft:block.trial_spawner.spawn_item_begin player @a[distance=..32] ~ ~ ~ .5 2

particle wax_off ~ ~ ~ .3 .3 .3 5 5 force @a[distance=..64]


execute at @p run loot spawn ~ ~.276 ~ loot unbound:fairy_in_a_bottle

execute at @p positioned ~ ~.276 ~ run data modify entity @n[type=item,distance=..1] PickupDelay set value 0
#execute at @p positioned ~ ~.276 ~ run data modify entity @n[type=item,distance=..1] Item.components."minecraft:custom_data" append value {lit_time:1}
#execute at @p positioned ~ ~.276 ~ store result entity @n[type=item,distance=..1] Item.components."minecraft:custom_data".lit_time int 1 run scoreboard players get @s unbound_fairy_lit

execute on passengers run kill @s
tp @s ~ ~-400 ~
kill @s