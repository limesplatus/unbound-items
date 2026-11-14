

#using
execute if entity @s[advancements={unbound:technical/use/magnet=true}] run function unbound:magnet/use


#stop using
execute if entity @s[advancements={unbound:technical/use/magnet=false},tag=unbound_using_magnet] run function unbound:magnet/use_stop


#time using for durability time used
execute if score @s unbound_magnet_time matches 0.. run function unbound:magnet/time_used