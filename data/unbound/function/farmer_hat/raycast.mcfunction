#1

scoreboard players add temp unbound_storage 1

execute positioned ~ ~1.62 ~ if block ~ ~.8 ~ #unbound:crop_farmer_hat run function unbound:farmer_hat/block_store


execute unless score temp unbound_storage matches 30.. positioned ^ ^ ^.2 run function unbound:farmer_hat/raycast


execute if score temp unbound_storage matches 30.. run scoreboard players reset temp unbound_storage

advancement revoke @s only unbound:technical/place/crop
