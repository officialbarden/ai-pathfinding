# // How far of a block it can reach/mine.
scoreboard players operation #RaycastLimit ai.Values = @s ai.Reach
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 run function ai:zprivate/entity/actions/mining/raycast/cast
