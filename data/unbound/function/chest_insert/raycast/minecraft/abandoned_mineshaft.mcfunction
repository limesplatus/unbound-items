scoreboard players add temp unbound_storage 1

scoreboard players set loot_minecart unbound_storage 1

execute if entity @n[distance=..1,type=chest_minecart,tag=!unbound_loot_inserted] run function unbound:chest_insert/at_chest_init {chest_insert:"unbound:spectral_bottle",chance:"200",item_count:1,item_count_min:0,item_count_max:0,item_replace:1}
execute if entity @n[distance=..1,type=chest_minecart,tag=!unbound_loot_inserted] run function unbound:chest_insert/at_chest_init {chest_insert:"unbound:golden_beetroot",chance:"250",item_count:-1,item_count_min:1,item_count_max:2,item_replace:1}

execute if entity @n[distance=..1,type=chest_minecart,tag=!unbound_loot_inserted] run function unbound:chest_insert/at_chest_init {chest_insert:"unbound:bomb",chance:"500",item_count:-1,item_count_min:2,item_count_max:3,item_replace:1}
#if first bomb generated chance for additional one
execute if score item_count_completed unbound_storage matches 1.. if entity @n[distance=..1,type=chest_minecart,tag=!unbound_loot_inserted] run function unbound:chest_insert/at_chest_init {chest_insert:"unbound:bomb",chance:"333",item_count:1,item_count_min:0,item_count_max:0,item_replace:1}


tag @n[distance=..1,type=chest_minecart,tag=!unbound_loot_inserted] add unbound_loot_inserted

execute unless block ~ ~ ~ #unbound:loot_container positioned ^ ^ ^.2 run function unbound:chest_insert/raycast/minecraft/abandoned_mineshaft


execute if score temp unbound_storage matches 30.. run scoreboard players reset temp unbound_storage

advancement revoke @s only unbound:chest/minecraft/abandoned_mineshaft


scoreboard players reset loot_minecart unbound_storage
