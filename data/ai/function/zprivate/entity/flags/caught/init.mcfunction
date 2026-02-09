# // Give AI a Tag if the Target Entity is Looking in the Direction of the AI.

# Reset Bools
data remove storage ai:bools AIEntityInViewCone
data remove storage ai:bools AIEntityInViewRange


# Check if AI Entity is in Player's View Angle
execute store result storage ai:bools AIEntityInViewCone int 1 run function ai:zprivate/entity/flags/caught/in_view/init
# If in View Cone, check if it is in View Range or is Being Blocked.
execute if data storage ai:bools {AIEntityInViewCone:1} store result storage ai:bools AIEntityInViewRange int 1 run function ai:zprivate/entity/flags/caught/in_range/init

# Give Tag Finally
execute if data storage ai:bools {AIEntityInViewCone:1, AIEntityInViewRange:1} run return run tag @n[tag=ai.pathfinding,predicate=ai:id] add ai.VisibleToTargetEntity
tag @n[tag=ai.pathfinding,predicate=ai:id] remove ai.VisibleToTargetEntity

