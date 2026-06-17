# OPTION A: Token de Raid Legendaire -> donne 1 cristal T7 aleatoire au joueur
# Tire au sort 1 des 13 legendaires d'Unova et le met dans l'inventaire du joueur.
# Le joueur devra ensuite poser le cristal et clic-droit pour lancer la raid.
#
# Usage depuis ton mod d'items custom:
#   /execute as <player> run function legendary7star:token_give_random
#
# Tu peux aussi consommer un item du joueur avant d'appeler la fonction:
#   /clear @s legendary_token 1
#   /function legendary7star:token_give_random

# Tire un nombre entre 0 et 12 dans un scoreboard temporaire
scoreboard objectives add legendary7_rng dummy
execute store result score @s legendary7_rng run random value 0..12

# Selon le tirage, donne le bon cristal
execute as @s if score @s legendary7_rng matches 0  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:reshiram"}]
execute as @s if score @s legendary7_rng matches 1  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:zekrom"}]
execute as @s if score @s legendary7_rng matches 2  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:kyurem"}]
execute as @s if score @s legendary7_rng matches 3  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:cobalion"}]
execute as @s if score @s legendary7_rng matches 4  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:terrakion"}]
execute as @s if score @s legendary7_rng matches 5  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:virizion"}]
execute as @s if score @s legendary7_rng matches 6  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:tornadus"}]
execute as @s if score @s legendary7_rng matches 7  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:thundurus"}]
execute as @s if score @s legendary7_rng matches 8  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:landorus"}]
execute as @s if score @s legendary7_rng matches 9  run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:victini"}]
execute as @s if score @s legendary7_rng matches 10 run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:keldeo"}]
execute as @s if score @s legendary7_rng matches 11 run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:genesect"}]
execute as @s if score @s legendary7_rng matches 12 run give @s cobblemonraiddens:raid_crystal_block[minecraft:block_entity_data={id:"cobblemonraiddens:raid_crystal_block_entity",raid_boss:"cobblemonraiddens:meloetta"}]

# Message + son
title @s actionbar {"text":"Cristal de raid legendaire obtenu !","color":"gold","bold":true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2

# Nettoyage du score temporaire
scoreboard players reset @s legendary7_rng
