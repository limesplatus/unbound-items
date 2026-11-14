



execute unless entity @s[advancements={unbound:technical/craft_smithing_sculk_radar=true}] run clear @s jigsaw[custom_data~{unbound_item:1b}]

advancement revoke @s only unbound:technical/craft_smithing_sculk_radar
advancement revoke @s only unbound:technical/craft_smithing_sculk_radar_without_items
