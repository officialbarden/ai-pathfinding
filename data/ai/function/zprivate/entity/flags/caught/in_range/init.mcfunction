# // baseViewRange is scaled 10x, hence the raycast step is 0.1
# // Set Custom Value; if non-existent, fall back to base value.
scoreboard players operation @s ai.RAYCAST = baseTargetEntityViewRange ai.Values

execute at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=ai.pathfinding,predicate=ai:id] eyes rotated ~ ~ run function ai:zprivate/entity/flags/caught/in_range/raycast/cast

