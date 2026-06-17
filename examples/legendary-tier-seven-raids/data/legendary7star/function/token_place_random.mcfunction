# OPTION B: Token -> pose un cristal T7 aleatoire devant le joueur
# Le cristal apparait directement au sol. Le joueur n'a qu'a clic-droit dessus.
#
# Usage depuis ton mod d'items custom:
#   /execute as <player> at @s run function legendary7star:token_place_random

scoreboard objectives add legendary7_rng dummy
execute store result score @s legendary7_rng run random value 0..12

# Place le cristal a la position du joueur, oriente vers le bas (au sol)
execute as @s at @s if score @s legendary7_rng matches 0  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:reshiram"}
execute as @s at @s if score @s legendary7_rng matches 1  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:zekrom"}
execute as @s at @s if score @s legendary7_rng matches 2  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:kyurem"}
execute as @s at @s if score @s legendary7_rng matches 3  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:cobalion"}
execute as @s at @s if score @s legendary7_rng matches 4  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:terrakion"}
execute as @s at @s if score @s legendary7_rng matches 5  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:virizion"}
execute as @s at @s if score @s legendary7_rng matches 6  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:tornadus"}
execute as @s at @s if score @s legendary7_rng matches 7  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:thundurus"}
execute as @s at @s if score @s legendary7_rng matches 8  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:landorus"}
execute as @s at @s if score @s legendary7_rng matches 9  run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:victini"}
execute as @s at @s if score @s legendary7_rng matches 10 run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:keldeo"}
execute as @s at @s if score @s legendary7_rng matches 11 run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:genesect"}
execute as @s at @s if score @s legendary7_rng matches 12 run setblock ~ ~ ~ cobblemonraiddens:raid_crystal_block[is_natural=false]{raid_boss:"cobblemonraiddens:meloetta"}

title @s actionbar {"text":"Un cristal de raid legendaire est apparu !","color":"gold","bold":true}
playsound minecraft:block.beacon.activate block @s ~ ~ ~ 1 1.2

scoreboard players reset @s legendary7_rng
