# // Keep Emitting a Constant Raycast Beam Towards Target Entity. 
# // If the Target Entity is behind a wall, or sort of unreachable, then lose track of it.


execute store result storage ai:bools TargetEntityInViewCone int 1 run function ai:zprivate/entity/mode/chasing_entity/view_cone/init


# // If Target Entity is Not in View Cone:
execute anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 if data storage ai:bools {TargetEntityInViewCone:0} run function ai:zprivate/entity/mode/chasing_entity/losing_entity
# // If Target Entity Is in View Cone
execute anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 if data storage ai:bools {TargetEntityInViewCone:1} run function ai:zprivate/entity/mode/chasing_entity/found_entity

#function ai:zprivate/entity/mode/chasing_entity/raycast/init
execute unless score @s ai.RememberingLastPosOfEntity matches ..0 unless score @s ai.PathfindingDuration matches 1.. at @n[predicate=ai:id, tag=ai.BeingTargetted] run function ai:zprivate/pathfind/init

# // If the Entity lost the target entity, reset chasing entity state:
execute if score @s ai.RememberingLastPosOfEntity matches ..0 run return run function ai:zprivate/entity/mode/chasing_entity/lost_entity
