# OPTION C: Token -> spawn directement un boss T7 aleatoire devant le joueur
# Le boss apparait en tant qu'entite (sans dimension de raid). Plus arcade.
#
# Usage depuis ton mod d'items custom:
#   /execute as <player> at @s run function legendary7star:token_spawn_boss_random

# Spawne un boss aleatoire de la bucket "unova_legendaries" 5 blocs devant le joueur
execute at @s run crd spawnboss ^ ^ ^5 bucket cobblemonraiddens:unova_legendaries

title @s actionbar {"text":"Un boss legendaire surgit !","color":"red","bold":true}
playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 1 1
