
execute if data storage vanilla_refresh_config:config config{load_message:1} unless score load_message refresh_settings matches ..0 run tellraw @a [{"translate": "Successfully loaded ","color": "gray"},{"translate": "Unbound v","color": "green"}]


scoreboard objectives add unbound_config dummy
scoreboard objectives add unbound_radar_calibration_mode dummy
scoreboard objectives add unbound_radar_calibration dummy
scoreboard objectives add unbound_radar_timer dummy

scoreboard objectives add unbound_constants dummy
scoreboard objectives add unbound_count dummy
scoreboard objectives add unbound_storage dummy
scoreboard objectives add unbound_count2 dummy

scoreboard objectives add unbound_fire_time_on_fire dummy
scoreboard objectives add unbound_fire_invul dummy
scoreboard objectives add unbound_fire_invul_end dummy


scoreboard objectives add unbound_sea_amulet_recently_took_oxygen dummy

scoreboard objectives add unbound_sea_amulet_dash dummy
scoreboard objectives add unbound_sea_amulet_dash2 dummy


scoreboard objectives add unbound_mob_anim2 dummy
scoreboard objectives add unbound_mob_anim dummy

scoreboard objectives add unbound_spectre_durability dummy
scoreboard objectives add unbound_spectre_time dummy
scoreboard objectives add unbound_rotation dummy
scoreboard objectives add unbound_rotation_p dummy
scoreboard objectives add unbound_rotation_po dummy

scoreboard objectives add unbound_mob_health dummy


scoreboard objectives add unbound_player_health health
scoreboard objectives add unbound_player_health2 dummy

scoreboard objectives add unbound_clock dummy

scoreboard objectives add unbound_confused dummy

scoreboard objectives add unbound_rabbit_time dummy

scoreboard objectives add unbound_cloak_dash_count dummy
scoreboard objectives add unbound_cloak_dash dummy

scoreboard objectives add unbound_jump custom:jump

scoreboard objectives add unbound_snowball_use used:snowball

scoreboard objectives add unbound_block_tick dummy
scoreboard objectives add unbound_block_level dummy


scoreboard objectives add unbound_hood_time dummy

###
scoreboard players set 1 unbound_constants 1
scoreboard players set 2 unbound_constants 2
scoreboard players set 3 unbound_constants 3
scoreboard players set 4 unbound_constants 4
scoreboard players set 5 unbound_constants 5
scoreboard players set 6 unbound_constants 6


scoreboard players set 10 unbound_constants 10

scoreboard players set 20 unbound_constants 20


scoreboard players set 100 unbound_constants 100

team add unbound_hide_name
team modify unbound_hide_name nametagVisibility never

scoreboard objectives add unbound_uuid1 dummy
scoreboard objectives add unbound_uuid2 dummy
scoreboard objectives add unbound_uuid3 dummy
scoreboard objectives add unbound_uuid4 dummy

scoreboard objectives add unbound_right_click minecraft.used:fishing_rod
scoreboard objectives add unbound_enchantlevel dummy

scoreboard objectives add unbound_bone_wand_sneak_count dummy
scoreboard objectives add unbound_bone_wand_sneak_timer dummy

scoreboard objectives add unbound_magnet_time dummy

function unbound:load_schedules
function unbound:other/default_settings

scoreboard objectives add unbound_strider_boots_jump_level dummy
scoreboard objectives add unbound_strider_boots_count dummy
scoreboard objectives add unbound_strider_boots_cooldown dummy
scoreboard objectives add unbound_strider_boots_click_cooldown dummy
scoreboard objectives add unbound_strider_boots dummy

scoreboard objectives add unbound_sea_amulet_momentum dummy

scoreboard objectives add unbound_installed dummy

scoreboard objectives add unbound_fairy_lit dummy

scoreboard objectives add unbound_time_since_rest custom:time_since_rest

### check installs

scoreboard players set vanilla_refresh unbound_installed 0
execute store result score vanilla_refresh unbound_installed run function vanilla_refresh:installed