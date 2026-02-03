# // If the AI doesn't have the Moving Permission, don't move.
execute unless entity @s[tag=ai.Move] run return fail
scoreboard players operation #ID ai.ID = @s ai.ID
execute unless entity @n[tag=ai.PathFound,predicate=ai:id] run return fail

# execute at @s align y if entity @e[tag=ai.PathfindTo.ThisPosition,predicate=ai:id,distance=..0.6,type=marker] run tag @s remove ai.CanForceItsWayToLocation
execute at @s align y run kill @e[tag=ai.PathFound,predicate=ai:id,distance=..0.76, type=marker]
execute at @s run kill @e[tag=ai.PathFound,predicate=ai:id,distance=..0.76, type=marker]

execute at @s align y facing entity @n[tag=ai.PathFound,predicate=ai:id,type=marker] eyes run return run function ai:zprivate/entity/move/init
