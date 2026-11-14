
execute if score 2tick unbound_clock matches 1 as @e[distance=..20,tag=unbound_magnet_item,type=item] run function unbound:magnet/cancel_item_motion

execute unless entity @s[tag=unbound_using_magnet] run function unbound:magnet/use_init



tag @s add unbound_magnet_user
execute if score 2tick unbound_clock matches 1 anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run function unbound:magnet/use_raycast
tag @s remove unbound_magnet_user

particle enchant ~ ~2 ~ 0 0 0 3 1 force @a[distance=..32]

#sound
execute if score is_pulling_entity unbound_storage matches 1 if score 2tick unbound_clock matches 1 run playsound minecraft:block.copper_bulb.break player @a[distance=..32] ~ ~ ~ .1 1.5
execute if score 4tick unbound_clock matches 1 run playsound minecraft:block.copper_bulb.break player @a[distance=..32] ~ ~ ~ .6 2


execute if predicate {"type":"any_of","terms":[{"type":"entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"predicates":{"damage":{durability:0}}}}}}]} run function unbound:other/item_durability_break {block:"iron_block",slot:"weapon.offhand"}
execute if predicate {"type":"any_of","terms":[{"type":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"damage":{durability:0}}}}}}]} run function unbound:other/item_durability_break {block:"iron_block",slot:"weapon.mainhand"}


scoreboard players reset is_pulling_entity unbound_storage