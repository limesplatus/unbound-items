
scoreboard players add @s unbound_count 1

execute facing entity @p[predicate=unbound:equipped/sea_amulet] eyes run particle bubble ^ ^ ^ ^ ^ ^10000000000000000000000000000000 .0000000000000000000000000000002 0 force @a[distance=..64]

execute if score @s unbound_count matches 5.. run kill @s

schedule function unbound:amulets/sea/bubble_particle/loop_1t 1t