

$data modify storage unbound:storage hood_inventory.$(slot_storage).components.minecraft:custom_data.asset_id_og set from storage unbound:storage hood_inventory.$(slot_storage).components.minecraft:equippable.asset_id

$execute unless data storage hood_inventory.$(slot_storage).components.minecraft:custom_data{asset_id_og:""} run data modify storage unbound:storage hood_inventory.$(slot_storage).components.minecraft:custom_data.asset_id_og set value

$data modify storage unbound:storage hood_inventory.$(slot_storage).components.minecraft:equippable.asset_id set value "unbound:invisible"
$data modify entity @n[type=item_display,tag=unbound_hood_item_retriever] item set from storage unbound:storage hood_inventory.$(slot_storage)
$item replace entity @s $(slot) from entity @n[type=item_display,tag=unbound_hood_item_retriever] contents

