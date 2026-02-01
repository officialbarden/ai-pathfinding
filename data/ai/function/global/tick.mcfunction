# // Stop Pathfinding if Duration is < 0.
execute as @e[tag=ai.Move, tag=ai, scores={ai.PathfindingDuration=..0}] at @s run function ai:zprivate/pathfind/stop
# // Tick Down Pathfinding Duration Timer:
execute as @e[tag=ai.Move, tag=ai, scores={ai.PathfindingDuration=1..}] run scoreboard players remove @s ai.PathfindingDuration 1
# // If Pathfinding Failed; Run: (it's important to only run this via tick.mcfunction)
execute as @e[tag=!ai.Move, tag=ai, scores={astar.status=0}] at @s run function ai:zprivate/pathfind/failed

execute as @e[tag=ai, scores={ai.Mode=2}] at @s run function ai:zprivate/entity/mode/chasing_entity/init

execute as @e[tag=ai] rotated as @s on passengers on passengers run rotate @s ~ 0

# // Initialize Basic Values necessary for #ai:logic functions:
execute as @e[tag=ai, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init
# // Run Basic Logic:
execute as @e[tag=ai] at @s run function #ai:logic