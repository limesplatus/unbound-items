scoreboard players add repetition unbound_storage 1



execute unless score repetition unbound_storage matches 16.. if entity @n[distance=..1,type=item] run function unbound:magnet/hit_block
execute unless score repetition unbound_storage matches 16.. unless block ~ ~ ~ #unbound:permeable run function unbound:magnet/hit_block
execute if score repetition unbound_storage matches 16.. positioned ^ ^ ^ run function unbound:magnet/hit_block

execute unless score repetition unbound_storage matches 16.. positioned ^ ^ ^1 run function unbound:magnet/use_raycast

scoreboard players reset repetition unbound_storage