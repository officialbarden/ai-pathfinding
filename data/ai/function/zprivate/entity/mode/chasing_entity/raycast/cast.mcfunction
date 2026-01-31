scoreboard players remove @s ai.RAYCAST 1
execute if score @s ai.RAYCAST matches ..0 run return run function ai:zprivate/entity/mode/chasing_entity/losing_entity

# // Visible Beam
#particle electric_spark ~ ~ ~ 0 0 0 0 1 force

# // Raycast Hitting Entity Detection
execute if entity @n[tag=ai.BeingTargetted,predicate=ai:id,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @n[tag=ai.BeingTargetted, predicate=ai:id] run return run function ai:zprivate/entity/mode/chasing_entity/found_entity

# // Raycast Hitting Block Detection
execute unless block ~ ~ ~ #ai:see_through run return run function ai:zprivate/entity/mode/chasing_entity/losing_entity

# // Reiterate.
execute positioned ^ ^ ^0.1 run function ai:zprivate/entity/mode/chasing_entity/raycast/cast
