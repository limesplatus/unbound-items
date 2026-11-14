execute as @e[distance=..48,type=zombie] run function unbound:farmer_hat/zombie_set

# when enchanted loses unbreakability
execute if predicate unbound:equipped/unbound_enchanted_helmet run item modify entity @s armor.head {type:"set_lore","mode":"append",lore:[[{"text":""}],[{"translate":"Grindstone Repair: ","color":"gray","italic": false}],[{"translate":"  ","color":"gray","italic": false},{"color":"blue","italic": false,"translate":"item.minecraft.leather_helmet"}]]}
execute if predicate unbound:equipped/unbound_enchanted_helmet run item modify entity @s armor.head unbound:make_breakable