# // Change State:
#function ai:zprivate/entity/mode/chasing_entity/change_state

# // Grace Period before entity reverts back to roaming to search for target entity.
scoreboard players operation @s[tag=ai.ChasingTargetEntity] ai.LostEntityGracePeriod = @s ai.baseLostEntityGracePeriod
execute if score @s[tag=ai.ChasingTargetEntity] ai.LostEntityGracePeriod matches 0 run scoreboard players operation @s[tag=ai.ChasingTargetEntity] ai.LostEntityGracePeriod = baseLostEntityGracePeriod ai.Values
tag @s remove ai.ChasingTargetEntity

# // If there exists an entity of type #ai:node, with tag ai.Node, randomly choose one of them and pathfind to it.
execute if score @s ai.PathfindingDuration matches ..0 if score @s ai.LostEntityGracePeriod matches ..0 at @n[sort=random, tag=ai.Node, type=#ai:node] run function ai:zprivate/pathfind/init
