# // Set Fixed State:
scoreboard players set @s ai.State 1

# // If there exists an entity of type #ai:node, with tag ai.Node, randomly choose one of them and pathfind to it.
execute if score @s ai.PathfindingDuration matches ..0 at @n[sort=random, tag=ai.Node, type=#ai:node] run function ai:zprivate/pathfind/init
