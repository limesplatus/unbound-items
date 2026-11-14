
execute unless block ~ ~-1 ~ air unless block ~ ~ ~ lava positioned ~ ~.25 ~ run function unbound:strider_boots/jump
execute if block ~ ~ ~ lava positioned ~ ~1 ~ run function unbound:strider_boots/search_lava_surface
execute if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function unbound:strider_boots/search_lava_surface