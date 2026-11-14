

scoreboard players reset item_count_completed unbound_storage
scoreboard players reset item_count_attempts
scoreboard players reset temp unbound_storage

#set macro to score
$scoreboard players set item_count_min unbound_storage $(item_count_min)
$scoreboard players set item_count_max unbound_storage $(item_count_max)
$scoreboard players set item_count_set unbound_storage $(item_count)
$scoreboard players set item_replace unbound_storage $(item_replace)


#========================================

## UNIFORM RANDOM ITEM COUNT

# randomizes min and max item count values, unless the min and max are equal
$execute unless score item_count_min unbound_storage = item_count_max unbound_storage store result score item_count unbound_storage run random value $(item_count_min)..$(item_count_max)

#========================================

# if min and max are equal, set item_count to min
execute if score item_count_min unbound_storage = item_count_max unbound_storage run scoreboard players operation item_count unbound_storage = item_count_min unbound_storage

#  if the "item_count_set" has a value higher than 0, 
#  ignore the two randomizers above and use set value "item_count_set" // item_count
execute if score item_count_set unbound_storage matches 1.. run scoreboard players operation item_count unbound_storage = item_count_set unbound_storage

#========================================

# DEBUG

$tellraw @s[tag=unbound_debug] [{"text":""},{"text":"\n$(chest_insert)",color:"white"}]
$tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"chance: $(chance)","color":"gray"}]
$tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"item_replace: $(item_replace)","color":"gray"}]
$tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"item_count_min: $(item_count_min)","color":"gray"}]
$tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"item_count_max: $(item_count_max)","color":"gray"}]
$tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"item_count_set: $(item_count)","color":"gray"}]
tellraw @s[tag=unbound_debug] [{"text":" ","color":"gray"},{"text":"item_count: ","color":"gray"},{"score":{"name":"item_count","objective":"unbound_storage"}}]

#========================================

## LOOT CHANCE

# roll between 1 and 1000
execute store result score randomizer unbound_storage run random value 1..1000

# if number rolled above is between 1 and the spawn chance $(chance), then spawn loot
# e.x. $(chance) = 500. this would be a 50% chance
$execute unless score item_count unbound_storage matches ..0 if score randomizer unbound_storage matches 1..$(chance) run function unbound:chest_insert/at_chest {chest_insert:"$(chest_insert)"}



execute if score item_count_attempts unbound_storage matches 1.. run tellraw @s[tag=unbound_debug] [{"text":" ","color":"gray"},{"text":"item_count_attempts: ","color":"gray"},{"score":{"name":"item_count_attempts","objective":"unbound_storage"}}]

execute unless score item_count_completed unbound_storage matches 1.. run tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"Generated: ","color":"gray"},{"text":"❌","color":"red"}]
execute if score item_count_completed unbound_storage matches 1.. run tellraw @s[tag=unbound_debug] [{"text":" "},{"text":"Generated: ","color":"gray"},{"text":"✔","color":"green"}]
