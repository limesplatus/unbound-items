

execute if block ^ ^ ^1 #unbound:permeable if score @s unbound_sea_amulet_dash matches 1..4 run tp @s ^ ^ ^.8
execute if block ^ ^ ^.7 #unbound:permeable if score @s unbound_sea_amulet_dash matches 5..10 run tp @s ^ ^ ^.6
execute if block ^ ^ ^.5 #unbound:permeable if score @s unbound_sea_amulet_dash matches 11..20 run tp @s ^ ^ ^.4
execute if block ^ ^ ^.3 #unbound:permeable if score @s unbound_sea_amulet_dash matches 21..30 run tp @s ^ ^ ^.2
execute if block ^ ^ ^.1 #unbound:permeable if score @s unbound_sea_amulet_dash matches 31..40 run tp @s ^ ^ ^.06
execute if block ^ ^ ^.1 #unbound:permeable if score @s unbound_sea_amulet_dash matches 41..45 run tp @s ^ ^ ^.02




execute if predicate unbound:chance/50_percent if score @s unbound_sea_amulet_dash matches ..40 run playsound block.bubble_column.bubble_pop player @a[distance=..15] ~ ~ ~ .5 1.2
execute if predicate unbound:chance/50_percent if score @s unbound_sea_amulet_dash matches ..40 run playsound block.bubble_column.bubble_pop player @a[distance=..15] ~ ~ ~ .5 1
execute if predicate unbound:chance/50_percent if score @s unbound_sea_amulet_dash matches ..40 run playsound block.bubble_column.bubble_pop player @a[distance=..15] ~ ~ ~ .5 1.8

execute if score @s unbound_sea_amulet_dash matches 40 run playsound block.bubble_column.bubble_pop player @a[distance=..15] ~ ~ ~ .5 1.8
execute if score @s unbound_sea_amulet_dash matches 42 run playsound block.bubble_column.bubble_pop player @a[distance=..15] ~ ~ ~ .5 1.8