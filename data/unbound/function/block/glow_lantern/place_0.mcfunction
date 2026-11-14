execute if predicate unbound:player/sneaking if block ~ ~ ~ lantern[hanging=false] unless entity @n[distance=..0.001,type=item_display,scores={unbound_block_level=1..}] run function unbound:block/glow_lantern/place_sneak
execute if predicate unbound:player/sneaking if block ~ ~ ~ lantern[hanging=true] positioned ~ ~.06 ~ unless entity @n[distance=..0.001,type=item_display,scores={unbound_block_level=1..}] run function unbound:block/glow_lantern/place_sneak


execute if block ~ ~ ~ lantern[hanging=false] unless entity @n[distance=..0.001,type=item_display,scores={unbound_block_level=4..}] run function unbound:block/glow_lantern/place
execute if block ~ ~ ~ lantern[hanging=true] positioned ~ ~.06 ~ unless entity @n[distance=..0.001,type=item_display,scores={unbound_block_level=4..}] run function unbound:block/glow_lantern/place



execute if block ~ ~ ~ water_cauldron unless entity @n[distance=..0.001,type=item_display,scores={unbound_block_level=4..}] run function unbound:block/glow_lantern/cauldron/place
