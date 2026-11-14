scoreboard players set armor_equipped unbound_storage 0

# count total armor pieces
execute if items entity @s armor.head * run scoreboard players add armor_equipped unbound_storage 1
execute if items entity @s armor.chest * run scoreboard players add armor_equipped unbound_storage 1
execute if items entity @s armor.legs * run scoreboard players add armor_equipped unbound_storage 1
execute if items entity @s armor.feet * run scoreboard players add armor_equipped unbound_storage 1

execute if score armor_equipped unbound_storage matches 0 if entity @s[distance=..5] run function unbound:spectral_bottle/glow_effect
execute if score armor_equipped unbound_storage matches 1 if entity @s[distance=..10] run function unbound:spectral_bottle/glow_effect
execute if score armor_equipped unbound_storage matches 2 if entity @s[distance=..15] run function unbound:spectral_bottle/glow_effect
execute if score armor_equipped unbound_storage matches 3 if entity @s[distance=..20] run function unbound:spectral_bottle/glow_effect
execute if score armor_equipped unbound_storage matches 4 if entity @s[distance=..25] run function unbound:spectral_bottle/glow_effect