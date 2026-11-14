

playsound minecraft:entity.armor_stand.break block @a[distance=..20] ~ ~ ~ 1 .5
playsound minecraft:block.trial_spawner.spawn_item_begin block @a[distance=..32] ~ ~ ~ 1.5 1.2
loot spawn ~ ~1.5 ~ loot unbound:strider_boots

execute positioned ~ ~.5 ~ run particle block{block_state:"blackstone"} ~ ~ ~ .3 .4 .3 1 100 force @a[distance=..32]
execute positioned ~ ~2 ~ run particle block{block_state:"nether_wart"} ~ ~ ~ .2 .2 .2 1 20 force @a[distance=..32]

particle lava ~ ~1 ~ .3 .5 .3 .01 3 force @a[distance=..32]

execute positioned ~ ~2 ~ run kill @n[type=item_display,tag=unbound_strider_statue_item,distance=..1]
