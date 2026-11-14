#2

scoreboard players set temp unbound_storage 999

execute if block ~ ~ ~ wheat align zyx positioned ~.5 ~.5 ~.5 run function unbound:farmer_hat/block_find_adjacent {crop:"wheat",crop_item:"wheat_seeds"}
execute if block ~ ~ ~ carrots align zyx positioned ~.5 ~.5 ~.5 run function unbound:farmer_hat/block_find_adjacent {crop:"carrots",crop_item:"carrot"}
execute if block ~ ~ ~ potatoes align zyx positioned ~.5 ~.5 ~.5 run function unbound:farmer_hat/block_find_adjacent {crop:"potatoes",crop_item:"potato"}
execute if block ~ ~ ~ beetroots align zyx positioned ~.5 ~.5 ~.5 run function unbound:farmer_hat/block_find_adjacent {crop:"beetroots",crop_item:"beetroot_seeds"}
execute if block ~ ~ ~ nether_wart align zyx positioned ~.5 ~.5 ~.5 run function unbound:farmer_hat/block_find_adjacent {crop:"nether_wart",crop_item:"nether_wart"}