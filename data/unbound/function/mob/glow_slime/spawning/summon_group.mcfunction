
execute store result score randomizer unbound_storage run random value 1..3




#summons at least 2
# 66%
function unbound:mob/glow_slime/summon_random_size

function unbound:mob/glow_slime/summon_random_size

#group of 3
# 33%
execute if score randomizer unbound_storage matches 3 run function unbound:mob/glow_slime/summon_random_size