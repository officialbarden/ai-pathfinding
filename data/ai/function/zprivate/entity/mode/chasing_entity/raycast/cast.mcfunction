scoreboard players remove @s ai.RAYCAST 1

# // Loosing Entity
execute if score @s ai.RAYCAST matches ..0 run return run data modify storage ai:bools TargetEntityClearlyVisible set value 0

# // Raycast Hitting Entity Detection
execute if entity @n[tag=ai.BeingTargetted,predicate=ai:id,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @n[tag=ai.BeingTargetted, predicate=ai:id] run return run data modify storage ai:bools TargetEntityClearlyVisible set value 1
# // Raycast Hitting Block Detection
execute unless block ~ ~ ~ #ai:see_through run return run data modify storage ai:bools TargetEntityClearlyVisible set value 0
# // Reiterate.
execute positioned ^ ^ ^0.1 run return run function ai:zprivate/entity/mode/chasing_entity/raycast/cast
