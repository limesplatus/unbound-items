
tellraw @s [{"text": " "}]


execute if score items_obtainable unbound_config matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hover_event":{"action":"show_text","value":[{"translate":"Whether players can obtain Unbound items from survival sources like mobs and chests\nNote: Recipes are not disabled by this setting"}]}},{"translate":"Items Obtainable in Survival: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"Click to change this setting"}]},"click_event":{"action":"run_command","command":"/function unbound:other/actions/a_config_change {id:\"items_obtainable\",value:\"0\",page:\"1\"}"}}]
execute if score items_obtainable unbound_config matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hover_event":{"action":"show_text","value":[{"translate":"Whether players can obtain Unbound items from survival sources like mobs and chests\nNote: Recipes are not disabled by this setting"}]}},{"translate":"Items Obtainable in Survival: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"Click to change this setting"}]},"click_event":{"action":"run_command","command":"/function unbound:other/actions/a_config_change {id:\"items_obtainable\",value:\"1\",page:\"1\"}"}}]

tellraw @s [{"text": " "}]

execute if score mob_spawns unbound_config matches 1 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hover_event":{"action":"show_text","value":[{"translate":"Whether Unbound mobs spwan.\nThis config can be overriden by the mob spawning gamerule being disabled"}]}},{"translate":"Mob Spawns: ","color":"gray"},{"translate":"Enabled","color":"green","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"Click to change this setting"}]},"click_event":{"action":"run_command","command":"/function unbound:other/actions/a_config_change {id:\"mob_spawns\",value:\"0\",page:\"1\"}"}}]
execute if score mob_spawns unbound_config matches 0 run tellraw @s [{"translate": "","color": "gray"},{"translate": "ⓘ ","hover_event":{"action":"show_text","value":[{"translate":"Whether Unbound mobs spwan.\nThis config can be overriden by the mob spawning gamerule being disabled"}]}},{"translate":"Mob Spawns: ","color":"gray"},{"translate":"Disabled","color":"red","underlined":true,"hover_event":{"action":"show_text","value":[{"translate":"Click to change this setting"}]},"click_event":{"action":"run_command","command":"/function unbound:other/actions/a_config_change {id:\"mob_spawns\",value:\"1\",page:\"1\"}"}}]

tellraw @s [{"text": " "}]


tellraw @s [{"text": " "}]
