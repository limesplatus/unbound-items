


execute if predicate { "type": "minecraft:entity_properties", "entity": "this", "predicate": { "equipment": { "feet": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:unbreaking", "levels": 1 } ] } } } } } if score @s unbound_spectre_durability matches ..12000 run return 2
execute if predicate { "type": "minecraft:entity_properties", "entity": "this", "predicate": { "equipment": { "feet": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:unbreaking", "levels": 2 } ] } } } } } if score @s unbound_spectre_durability matches ..16000 run return 2
execute if predicate { "type": "minecraft:entity_properties", "entity": "this", "predicate": { "equipment": { "feet": { "predicates": { "minecraft:enchantments": [ { "enchantments": "minecraft:unbreaking", "levels": { "min": 3 } } ] } } } } } if score @s unbound_spectre_durability matches ..24000 run return 2

item modify entity @s armor.feet {type:"set_damage",damage:-0.003,add:true}



execute if predicate {"type":"any_of","terms":[{"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"damage":{durability:0}}}}}}]} run function unbound:other/item_durability_break {block:"diamond_block",slot:"armor.feet"}

scoreboard players set @s unbound_spectre_durability 0

