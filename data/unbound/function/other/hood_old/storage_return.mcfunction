

summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_hood_item_retriever"]}

$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"armor.feet",slot_storage:"feet"}
$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"armor.legs",slot_storage:"legs"}
$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"armor.chest",slot_storage:"chest"}
$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"armor.head",slot_storage:"head"}

$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"weapon.offhand",slot_storage:"offhand"}
$function unbound:hood/storage_return_2 {UUID:$(UUID),slot:"weapon.mainhand",slot_storage:"mainhand"}


# debug
#execute as @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1] run tellraw @a [{"selector":"@s"},{"text":" "},{"nbt":"item","entity":"@s"}]

# clear everything

$data remove storage unbound:storage hood_inventory[{UUID:$(UUID)}]

kill @n[type=item_display,tag=unbound_hood_item_retriever,distance=..1]