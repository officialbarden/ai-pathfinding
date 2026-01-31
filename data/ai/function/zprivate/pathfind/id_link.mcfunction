
# // Link Path to AI Entity
scoreboard players operation @e[tag=astar,tag=astar.path,tag=!ai.PathFound] ai.ID = @s ai.ID
tag @e[tag=astar,tag=astar.path,tag=!ai.PathFound] add ai.PathFound
execute as @e[tag=ai.PathFound] at @s align y run tp @s ~ ~ ~
tag @e[tag=ai.PathFound] remove astar
