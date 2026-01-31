# // baseViewRange is scaled 10x, hence the raycast step is 0.1
scoreboard players operation @s ai.RAYCAST = baseViewRange ai.Values
execute at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=ai.BeingTargetted,predicate=ai:id] eyes rotated ~ ~ run function ai:zprivate/entity/mode/chasing_entity/raycast/cast
