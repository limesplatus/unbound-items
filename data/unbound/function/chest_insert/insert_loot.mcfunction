



$loot replace block ~ ~ ~ container.$(random_container_slot) loot $(chest_insert)
$execute if score loot_minecart unbound_storage matches 1 run loot replace entity @n[distance=..1,type=minecraft:chest_minecart] container.$(random_container_slot) loot $(chest_insert)



# $say $(chest_insert)
# $say $(random_container_slot)