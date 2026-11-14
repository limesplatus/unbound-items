$setblock ~ ~ ~ $(crop)

execute unless score vanilla_refresh unbound_installed matches 1 run return 1

execute if block ~ ~ ~ beetroots run summon marker ~ ~ ~ {Tags:["refresh_entity_crop_beetroots","refresh_entity_crop"]}
execute if block ~ ~ ~ carrots run summon marker ~ ~ ~ {Tags:["refresh_entity_crop_carrot","refresh_entity_crop"]}
execute if block ~ ~ ~ nether_wart run summon marker ~ ~ ~ {Tags:["refresh_entity_crop_nether_wart","refresh_entity_crop"]}
execute if block ~ ~ ~ potatoes run summon marker ~ ~ ~ {Tags:["refresh_entity_crop_potatoes","refresh_entity_crop"]}
execute if block ~ ~ ~ wheat run summon marker ~ ~ ~ {Tags:["refresh_entity_crop_wheat","refresh_entity_crop"]}

scoreboard players set crop_placed unbound_storage 1

$clear @s $(crop_item) 1

playsound item.crop.plant block @a[distance=..20] ~ ~ ~ 1 1.1
playsound block.crop.break block @a[distance=..20] ~ ~ ~ 1 1.2