
# UPDAATAE SPAWN VARIANTS WITH NBT FOR EACH VILLAGER DATA PROFESSION TO REFRESH
# ^ next task

# fix that bug that causes wrong skins

data modify entity @s VillagerData.profession set value "minecraft:nitwit"
$data modify entity @s VillagerData.profession set value "$(profession)"

execute if data entity @s VillagerData{profession:"minecraft:farmer"} at @s run function unbound:farmer_hat/spawn

tag @s add unbound_spawn_checked

