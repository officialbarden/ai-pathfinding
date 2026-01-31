# // Keep Emitting a Constant Raycast Beam Towards Target Entity. 
# // If the Target Entity is behind a wall, or sort of unreachable, then lose track of it.
function ai:zprivate/entity/mode/chasing_entity/raycast/init
execute unless score @s ai.RememberingLastPosOfEntity matches ..0 at @n[predicate=ai:id, tag=ai.BeingTargetted] run function ai:zprivate/pathfind/init

# // If the Entity lost the target entity, reset chasing entity state:
execute if score @s ai.RememberingLastPosOfEntity matches ..0 run return run function ai:zprivate/entity/mode/chasing_entity/lost_entity
