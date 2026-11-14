scoreboard players add temp unbound_storage 1

execute if block ~ ~ ~ #unbound:loot_container run function unbound:chest_insert/at_chest_init {chest_insert:"unbound:spectral_bottle",chance:"1000",item_count:1,item_count_min:0,item_count_max:0,item_replace:1}

execute unless block ~ ~ ~ #unbound:loot_container positioned ^ ^ ^.2 run function unbound:chest_insert/raycast/structory/library_high


execute if score temp unbound_storage matches 30.. run scoreboard players reset temp unbound_storage

advancement revoke @s only unbound:chest/structory/library_high
