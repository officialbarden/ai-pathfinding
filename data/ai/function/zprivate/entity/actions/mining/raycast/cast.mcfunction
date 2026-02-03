# // Raycasting Code
scoreboard players remove #RaycastLimit ai.Values 1

# // Couldn't Find Block
execute if score #RaycastLimit ai.Values matches 1.. if block ~ ~ ~ #ai:air positioned ^ ^ ^0.1 run return run function ai:zprivate/entity/actions/mining/raycast/cast

execute unless block ~ ~ ~ #ai:air run return run function ai:zprivate/entity/actions/mining/raycast/break_block
execute if score #RaycastLimit ai.Values matches ..0 run return fail
