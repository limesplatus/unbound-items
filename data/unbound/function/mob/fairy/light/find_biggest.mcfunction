
scoreboard players set fairy_count_offset unbound_storage 20
# execute store result score fairy_count unbound_storage if entity @e[distance=0.01..16,type=allay,tag=unbound_fairy]

# execute if score fairy_count unbound_storage matches 4.. run scoreboard players set fairy_count unbound_storage 3

# scoreboard players set 4 unbound_constants 4


# scoreboard players operation fairy_count unbound_storage *= 4 unbound_constants


# scoreboard players operation fairy_count_offset unbound_storage -= fairy_count unbound_storage

# ^^^ old scaling with additional fairies


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~ ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~45 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~90 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~135 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~180 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~225 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~270 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


scoreboard players operation temp unbound_storage = fairy_count_offset unbound_storage
execute rotated ~315 ~ if block ~ ~ ~ #air run function unbound:mob/fairy/light/find_large


