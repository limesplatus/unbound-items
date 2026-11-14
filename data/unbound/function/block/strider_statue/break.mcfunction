


playsound block.stone.place block @a[distance=..32] ~ ~ ~ 1 .8
playsound block.deepslate_tiles.break block @a[distance=..32] ~ ~ ~ 1 .7
playsound block.basalt.place block @a[distance=..32] ~ ~ ~ .5 .8
setblock ~ ~ ~ air

execute if entity @n[distance=..0.1,type=item_display,tag=unbound_strider_statue_boots_attached] run function unbound:block/strider_statue/break_strider_boots
execute unless score player_is_creative unbound_storage matches 1 run loot spawn ~ ~1.5 ~ loot unbound:strider_statue

execute positioned ~ ~.5 ~ run particle block{block_state:"blackstone"} ~ ~ ~ .3 .4 .3 1 100 force @a[distance=..32]

kill @n[type=item_display,tag=unbound_strider_statue,distance=...01]
kill @s