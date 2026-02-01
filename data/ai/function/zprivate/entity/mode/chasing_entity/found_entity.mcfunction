# // Set Amount of Time the AI Can Remember the Entity:
scoreboard players operation @s ai.RememberingLastPosOfEntity = @s ai.ChasingEntityMemoryDuration
scoreboard players set @s ai.State 2

# // tag that the entity gets for devs to detect if entity spotted the target entity
tag @s add ai.ChasingTargetEntity
execute at @s anchored eyes facing entity @n[tag=ai.BeingTargetted, predicate=ai:id] eyes rotated ~ ~ run rotate @s ~ ~


#rotate @s 0 0