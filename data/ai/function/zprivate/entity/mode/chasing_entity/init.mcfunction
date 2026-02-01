# // Keep Emitting a Constant Raycast Beam Towards Target Entity. 
# // If the Target Entity is behind a wall, or sort of unreachable, then lose track of it.

# // Reset Bools for Checking:
data remove storage ai:bools TargetEntityClearlyVisible
data remove storage ai:bools TargetEntityInViewCone

execute store result storage ai:bools TargetEntityInViewCone int 1 run function ai:zprivate/entity/mode/chasing_entity/view_cone/init
# // If Target Entity is Not in View Cone:
execute if data storage ai:bools {TargetEntityInViewCone:0} run function ai:zprivate/entity/mode/chasing_entity/losing_entity
# // If Target Entity Is in View Cone
execute if data storage ai:bools {TargetEntityInViewCone:1} run function ai:zprivate/entity/mode/chasing_entity/raycast/init

# // If Target Entity is Clearly Visible AND In View Cone
execute if data storage ai:bools {TargetEntityClearlyVisible:1, TargetEntityInViewCone:1} run function ai:zprivate/entity/mode/chasing_entity/found_entity
execute if data storage ai:bools {TargetEntityClearlyVisible:0, TargetEntityInViewCone:1} run function ai:zprivate/entity/mode/chasing_entity/losing_entity

# // If the Entity lost the target entity, reset chasing entity state:
execute if score @s ai.RememberingLastPosOfEntity matches ..0 if score @s ai.PathfindingDuration matches ..0 run return run function ai:zprivate/entity/mode/chasing_entity/lost_entity

#function ai:zprivate/entity/mode/chasing_entity/raycast/init
execute if score @s ai.RememberingLastPosOfEntity matches 1.. unless score @s ai.PathfindingDuration matches 1.. at @n[predicate=ai:id, tag=ai.BeingTargetted] run function ai:zprivate/pathfind/init


