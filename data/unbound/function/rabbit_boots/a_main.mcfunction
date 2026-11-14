#begin sneak
    execute unless score @s unbound_rabbit_time matches 0.. \
    if predicate unbound:player/sneaking \
    if predicate unbound:player/on_ground run \
    scoreboard players add @s unbound_rabbit_time 0



execute if score @s unbound_rabbit_time matches 0.. run function unbound:rabbit_boots/sneaking

# when enchanted loses unbreakability
execute if predicate unbound:tick/2 if predicate unbound:equipped/unbound_enchanted_boots run item modify entity @s armor.feet {type:"set_lore","mode":"append",lore:[[{"text":""}],[{"translate":"Grindstone Repair: ","color":"gray","italic": false}],[{"translate":"  ","color":"gray","italic": false},{"color":"blue","italic": false,"translate":"item.minecraft.leather_boots"}]]}
execute if predicate unbound:tick/2 if predicate unbound:equipped/unbound_enchanted_boots run item modify entity @s armor.feet unbound:make_breakable
execute if predicate unbound:tick/2 unless predicate unbound:equipped/unbound_enchanted_boots run item modify entity @s armor.feet unbound:make_unbreakable
