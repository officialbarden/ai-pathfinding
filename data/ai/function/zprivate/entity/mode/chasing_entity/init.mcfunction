# // Keep Emitting a Constant Raycast Beam Towards Target Entity. 
# // If the Target Entity is behind a wall, or sort of unreachable, then lose track of it.


execute store result storage test can_see int 1 run function ai:zprivate/entity/mode/chasing_entity/view_cone/init

# // Visible Beam
execute anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 if data storage test {can_see:0} run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute anchored eyes facing entity @p eyes rotated ~ 0 positioned ^ ^ ^3 if data storage test {can_see:1} run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

#function ai:zprivate/entity/mode/chasing_entity/raycast/init
execute unless score @s ai.RememberingLastPosOfEntity matches ..0 at @n[predicate=ai:id, tag=ai.BeingTargetted] run function ai:zprivate/pathfind/init

# // If the Entity lost the target entity, reset chasing entity state:
execute if score @s ai.RememberingLastPosOfEntity matches ..0 run return run function ai:zprivate/entity/mode/chasing_entity/lost_entity
