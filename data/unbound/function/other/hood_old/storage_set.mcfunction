
$data modify storage unbound:storage hood_inventory append value {UUID:$(UUID),head:{},chest:{},legs:{},feet:{},mainhand:{},offhand:{}}

$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].head set from entity @s equipment.head
$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].chest set from entity @s equipment.chest
$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].legs set from entity @s equipment.legs
$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].feet set from entity @s equipment.feet
$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].mainhand set from entity @s SelectedItem
$data modify storage unbound:storage hood_inventory[{UUID:$(UUID)}].offhand set from entity @s equipment.offhand