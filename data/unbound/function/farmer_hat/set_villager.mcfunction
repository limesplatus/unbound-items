
summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_temp_item_display"]}


# get loot item
loot replace entity @n[type=item_display,tag=unbound_temp_item_display] contents loot unbound:farmer_hat


# set item in villager trades
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:15},maxUses:1,priceMultiplier:0.05,sell:{id:"minecraft:firework_star",count:1}}

data modify entity @s Offers.Recipes[-1].sell set from entity @n[type=item_display,tag=unbound_temp_item_display] item

kill @n[type=item_display,tag=unbound_temp_item_display]




tag @s add unbound_trade_set

