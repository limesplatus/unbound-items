playsound block.sculk_sensor.clicking_stop player @a[distance=..32] ~ ~ ~ .1 2

#playsound block.trial_spawner.eject_item player @a[distance=..32] ~ ~ ~ .6 2
playsound block.amethyst_block.resonate player @a[distance=..32] ~ ~ ~ 1 1.6

scoreboard players set @s unbound_radar_timer 0


execute if predicate unbound:equipped/sculk_radar_mainhand run item modify entity @s weapon unbound:sculk_radar4
execute if predicate unbound:equipped/sculk_radar_offhand run item modify entity @s weapon.offhand unbound:sculk_radar4