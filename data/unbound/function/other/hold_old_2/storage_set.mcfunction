
data remove storage unbound:storage hood_inventory
data modify storage unbound:storage hood_inventory set value {head:{},chest:{},legs:{},feet:{},mainhand:{},offhand:{}}

data modify storage unbound:storage hood_inventory.head set from entity @s equipment.head
data modify storage unbound:storage hood_inventory.chest set from entity @s equipment.chest
data modify storage unbound:storage hood_inventory.legs set from entity @s equipment.legs
data modify storage unbound:storage hood_inventory.feet set from entity @s equipment.feet



summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_hood_item_retriever"]}


# ✅ get the equipment into storage
# ✅once in storage
# ✅modify the storage to have new asseet id
# put equipment on item display
# put item display on player


function unbound:hood/storage_set_2 {slot:"armor.head",slot_storage:"head"}

# debug
execute as @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1] run tellraw @a [{"selector":"@s"},{"text":" "},{"nbt":"item","entity":"@s"}]

# clear everything

#$data remove storage unbound:storage hood_inventory

kill @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1]