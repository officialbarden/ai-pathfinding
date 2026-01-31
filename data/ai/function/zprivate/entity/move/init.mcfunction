# // Go Down Climbable Blocks
#execute facing entity @n[tag=ai.PathFound,predicate=ai:id,type=marker] feet positioned ^ ^ ^1 if block ~ ~ ~ #climbable run tp @s ^ ^ ^0.1
return fail
# // Accept Knockback
execute if score @s ai.HurtTime matches 1.. run return fail

# // for ID predicate.
scoreboard players operation #ID ai.ID = @s ai.ID

# // Modify Rotation Context based on Player State:
function ai:zprivate/entity/move/statewise_motion

# // Apply Motion:
function ai:zprivate/entity/move/apply
