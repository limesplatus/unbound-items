
# get data from storage
$data modify entity @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1] item set from storage unbound:storage hood_inventory[{UUID:$(UUID)}].$(slot_storage)


#$execute if items entity @s $(slot) * if data storage unbound:storage hood_inventory[{UUID:$(UUID),$(slot_storage):{}}] run say slot occupied and storage has an item

##############

# if the slot is occupied, simply return the item as a dropped entity
#---> ONLY if the storage data has something contained inside
$execute if items entity @s $(slot) * if data storage unbound:storage hood_inventory[{UUID:$(UUID),$(slot_storage):{}}] run summon item ~ ~ ~ {Item:{id:"acacia_boat",count:1},Tags:["smithed.entity","unbound_hood_item","unbound_hood_item_current"]}

$execute if items entity @s $(slot) * if data storage unbound:storage hood_inventory[{UUID:$(UUID),$(slot_storage):{}}] run data modify entity @n[type=item,distance=..1,tag=unbound_hood_item_current] Item set from entity @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1] item

$execute if items entity @s $(slot) * if data storage unbound:storage hood_inventory[{UUID:$(UUID),$(slot_storage):{}}] run tag @n[type=item,distance=..1,tag=unbound_hood_item_current] remove unbound_hood_item_current

##############

# replace slot if still empty
$execute unless items entity @s $(slot) * run item replace entity @s $(slot) from entity @n[type=item_display,tag=unbound_hood_item_retriever] contents

