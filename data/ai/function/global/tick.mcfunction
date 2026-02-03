# // Some Special Tags:
# ai.CompletePathBeforeUpdating = There's a possibility that the AI may change path before reaching its destination first. This tag will prevent that from happening.
# ai.LookOnlyAtPath = While Moving, The AI will only look at the Path it's travelling.
# ai.RandomlyLookAnywhere = While Moving, The AI will Randomly Look either at a Random Yaw, Pitch, or at an interesting nearby entity, meant to heighten Realism and its Life.
# ai.Node = Any Entity of Type #ai:node with this tag will act as Node that the entity can travel to while Roaming Around. Useful for fixing Locations.
# ai.BeingTargetted = If an Entity with this tag and with the same score as the AI entity in scoreboard ai:id, enters the AI's view cone, the AI will start chasing it IF it's ai.Mode is set to 2 (Chase Mode)

# // Stop Pathfinding if Duration is < 0.
execute as @e[tag=ai.Move, tag=ai.pathfinding, scores={ai.PathfindingDuration=..0}, tag=!ai.CompletePathBeforeUpdating] unless score @s ai.Mode matches 2 at @s run function ai:zprivate/pathfind/stop
# // Tick Down Pathfinding Duration Timer:
execute as @e[tag=ai.Move, tag=ai.pathfinding, scores={ai.PathfindingDuration=1..}] run scoreboard players remove @s ai.PathfindingDuration 1
# // If Pathfinding Failed; Run: (it's important to only run this via tick.mcfunction)
execute as @e[tag=!ai.Move, tag=ai.pathfinding, scores={astar.status=0}] at @s run function ai:zprivate/pathfind/failed

# // Look at the Path it's following:
#execute as @e[tag=ai.pathfinding, tag=ai.LookOnlyAtPath] at @s run function ai:zprivate/look/path/init

# // Initialize Basic Values necessary for #ai:logic functions:
execute as @e[tag=ai.pathfinding, tag=!ai.values.ready] at @s run function ai:zprivate/entity/set_value/init
# // Run Basic Logic:
execute as @e[tag=ai.pathfinding] at @s run function #ai:logic

# // Kills
execute as @e[tag=ai.PathFound] at @s run function ai:zprivate/kill/init


# // Door open-close:
execute as @e[tag=ai.PathFound, type=marker] at @s if block ~ ~ ~ #doors[open=false] run tag @s add ai.PathFound.DoorHere
