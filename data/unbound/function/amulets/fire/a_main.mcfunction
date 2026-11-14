

execute unless entity @s[tag=unbound_fire_amulet_noRes] run effect give @s fire_resistance 1 0 true

#touched fire
execute if predicate unbound:clock/5 unless score @s unbound_fire_time_on_fire matches 0.. if entity @s[nbt={Fire:300s}] run function unbound:amulets/fire/init_lava
execute unless score @s unbound_fire_time_on_fire matches 0.. if block ~ ~ ~ #unbound:hot run function unbound:amulets/fire/init

# blaze fireball touched
execute unless score @s unbound_fire_time_on_fire matches 0.. positioned ~ ~1 ~ if entity @e[distance=..2,type=small_fireball] run effect clear @s fire_resistance


execute if entity @s[tag=refresh_debug] run title @s actionbar [{"text":"Meter: "},{"score":{"name":"@s","objective":"unbound_fire_time_on_fire"}}]