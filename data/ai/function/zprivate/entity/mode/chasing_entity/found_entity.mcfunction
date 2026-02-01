# // Set Amount of Time the AI Can Remember the Entity:
scoreboard players operation @s ai.RememberingLastPosOfEntity = @s ai.ChasingEntityMemoryDuration
scoreboard players set @s ai.State 2

execute at @s anchored eyes facing entity @n[tag=ai.BeingTargetted, predicate=ai:id] eyes rotated ~ ~ run rotate @s ~ ~
#title @p actionbar "FOUND ENTITY"
#rotate @s 0 0