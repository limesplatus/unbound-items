
scoreboard players add temp unbound_storage 1

execute positioned ^-6 ^ ^ if block ~ ~ ~ #air if block ^ ^ ^1 #unbound:ore run function unbound:mob/fairy/light/summon_ore
execute positioned ^6 ^ ^ if block ~ ~ ~ #air if block ^ ^ ^1 #unbound:ore run function unbound:mob/fairy/light/summon_ore
execute positioned ^ ^ ^ if block ~ ~ ~ #air if block ^ ^ ^1 #unbound:ore run function unbound:mob/fairy/light/summon_ore
execute unless score temp unbound_storage matches 32.. positioned ^ ^ ^1 run function unbound:mob/fairy/light/find_large


scoreboard players reset temp unbound_storage