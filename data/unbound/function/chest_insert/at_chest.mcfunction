
# randomize slot
execute store result score random_container_slot unbound_storage run random value 0..26


#######

# random_container_slot -> into temp storage, for macro use
execute store result storage unbound:storage chest_insert.random_container_slot int 1 run scoreboard players get random_container_slot unbound_storage

# chest_insert -> into temp storage, for macro use
$data modify storage unbound:storage chest_insert.chest_insert set value "$(chest_insert)"

# runs macro to insert loot
execute unless score item_count_attempts unbound_storage matches 128.. run function unbound:chest_insert/insert_loot with storage unbound:storage chest_insert

######

scoreboard players add item_count_completed unbound_storage 1




#repeat function until item_count_completed reaches the set item_count
$execute if score item_count_completed unbound_storage < item_count unbound_storage run function unbound:chest_insert/at_chest {chest_insert:"$(chest_insert)"}






#execute if score item_count_completed unbound_storage >= item_count unbound_storage run tellraw @s[tag=unbound_debug] [{"text":"item_count_completed: ","color":"gray"},{"score":{"name":"item_count_completed","objective":"unbound_storage"}}]
