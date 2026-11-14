

loot spawn ~ ~ ~ loot unbound:z_dummy




data modify entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{"unbound_dummy":1b}}}}] Item set from entity @s equipment.mainhand

execute positioned ~ ~.005 ~ run function unbound:mob/fairy/summon
execute positioned ~ ~.005 ~ run scoreboard players operation @n[type=allay,tag=unbound_fairy] unbound_fairy_lit = @s unbound_fairy_lit

execute on passengers run kill @s

tp @s ~ -400 ~
kill @s