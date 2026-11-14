#4

$execute store result score item_count unbound_storage run clear @s $(crop_item) 0
$execute unless items entity @s weapon.* $(crop_item) run return 0
execute if score item_count unbound_storage matches ..1 run return 0

#$execute unless items entity @s inventory.* $(crop_item) unless items entity @s hotbar.* $(crop_item) run return 0

execute store result score rotation unbound_storage run data get entity @s Rotation[0]

#north
$execute if score rotation unbound_storage matches -180..-136 rotated 180 0 positioned ^ ^ ^1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}
$execute if score rotation unbound_storage matches 135..179 rotated 180 0 positioned ^ ^ ^1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}

#east
$execute if score rotation unbound_storage matches -135..-46 rotated -90 0 positioned ^ ^ ^1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}

#south
$execute if score rotation unbound_storage matches -45..44 rotated 0 0 positioned ^ ^ ^1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}

#west
$execute if score rotation unbound_storage matches 45..134 rotated 90 0 positioned ^ ^ ^1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}

$execute unless score crop_placed unbound_storage matches 1 positioned ~-1 ~ ~ if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}
$execute unless score crop_placed unbound_storage matches 1 positioned ~1 ~ ~ if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}
$execute unless score crop_placed unbound_storage matches 1 positioned ~ ~ ~-1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}
$execute unless score crop_placed unbound_storage matches 1 positioned ~ ~ ~1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function unbound:farmer_hat/block_place {crop:$(crop),crop_item:$(crop_item)}

scoreboard players reset crop_placed unbound_storage