summon marker ~ ~ ~ {Tags:["smithed.entity","unbound_entity","unbound_sea_amulet_bubble"]}

$scoreboard players set @n[type=marker,tag=unbound_sea_amulet_bubble] unbound_count -$(particle_time)

execute as @n[type=marker,tag=unbound_sea_amulet_bubble] at @s run function unbound:amulets/sea/bubble_particle/a_main