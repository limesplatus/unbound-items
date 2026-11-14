
# time in fire legend (info)
# 8 ticks in fire - FULL FIRE PROTECTION. no damage taken
# 2>=9 ticks... some fire protection, but drastically decreases the more you linger in fire
# ---- here after 9 ticks, each additional tick in fire increases fire time by 15 ticks

# time on fire

#BURNING HOT!!!! lava EXTRA BURN TIME!!
#gives -> at least 6 seconds of burning. lava slows you a lot so once you get out even if super fast it'll probably increase to 9+ seconds
execute if block ~ ~ ~ lava if score @s unbound_fire_time_on_fire matches ..1119 run function unbound:amulets/fire/init_lava
execute if predicate unbound:clock/5 unless score @s unbound_fire_time_on_fire matches 0.. if entity @s[nbt={Fire:300s}] if score @s unbound_fire_time_on_fire matches ..1119 run function unbound:amulets/fire/init_lava

#timer increases quickly at start
execute if score @s unbound_fire_time_on_fire matches ..999 if block ~ ~ ~ #unbound:hot run scoreboard players add @s unbound_fire_time_on_fire 40
execute unless score @s unbound_fire_time_on_fire matches 1000 run scoreboard players remove @s unbound_fire_time_on_fire 1

#
execute if score @s unbound_fire_time_on_fire matches ..159 run function unbound:amulets/fire/burning_texture_2
execute if score @s unbound_fire_time_on_fire matches 160..209 run function unbound:amulets/fire/burning_texture_2.5

#cooldown (no resistance)
# if on fire for more than 5 ticks (timer=150), fire invulernability decreases
# ------- old code: prev. if "still" in fire
#execute if score @s unbound_fire_time_on_fire matches 50.. run 
execute if score @s unbound_fire_time_on_fire matches 320..998 run function unbound:amulets/fire/burning




execute if score @s unbound_fire_time_on_fire matches 1000.. run effect clear @s fire_resistance


#max fire time
execute if score @s unbound_fire_time_on_fire matches 1000 unless predicate unbound:player/burning run function unbound:amulets/fire/burning_exit

# END
execute if score @s unbound_fire_time_on_fire matches ..0 run function unbound:amulets/fire/end

# default end tick value is 160, or 8 seconds
#execute if score @s unbound_fire_invul >= @s unbound_fire_invul_end run function unbound:amulets/fire/end
