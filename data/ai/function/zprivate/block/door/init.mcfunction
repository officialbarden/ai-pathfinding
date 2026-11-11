
execute as @e[tag=ai.PathFound, tag=ai.new] at @s unless block ~ ~ ~ #astar:ignore run kill @s
execute as @e[tag=ai.PathFound, tag=ai.new] at @s if entity @n[tag=ai.PathFound, predicate=ai:id, tag=!ai.new,distance=..0.9] run kill @s

scoreboard players operation @e[tag=ai.PathFound, tag=ai.new] ai.ID = @s ai.ID
tag @e[tag=ai.PathFound, tag=ai.new, predicate=ai:id] remove ai.new

# Do Not Repeat
tag @s add ai.PathFound.DoorHere
