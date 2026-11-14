loot spawn ~ ~.3 ~ loot unbound:mc/glow_squid_ink
loot spawn ~ ~.3 ~ loot unbound:mc/slime_ball

particle splash ~ ~.5 ~ .2 .2 .2 .1 20 force @a[distance=..32]
playsound entity.player.splash player @a[distance=..32] ~ ~ ~ .5 2
playsound item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ .5 1
playsound item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ .5 .5
playsound entity.zombie.converted_to_drowned player @a[distance=..32] ~ ~ ~ .3 1.2

execute positioned ~ ~0.450 ~ run kill @e[distance=..0.5,sort=nearest,limit=4,type=item_display,tag=unbound_glow_lantern_cauldron_item]
kill @s