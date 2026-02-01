# // Get Rotation values for X,Y of AI
execute store result score #AI.ROT.X ai.MATH run scoreboard players get @s ai.RotationX
execute store result score #AI.ROT.Y ai.MATH run scoreboard players get @s ai.RotationY

# // Get Rotation values for X,Y of LINE CONNECTING AI AND TARGET ENTITY.
execute anchored eyes facing entity @n[tag=ai.BeingTargetted,predicate=ai:id] eyes rotated ~ ~ summon marker run function ai:zprivate/entity/mode/chasing_entity/view_cone/target_entity_posv

# // subtract angles.
scoreboard players operation #AI.ROT.X ai.MATH -= #TE.ROT.X ai.MATH
execute if score #AI.ROT.X ai.MATH matches ..-1 run scoreboard players operation #AI.ROT.X ai.MATH *= -1 ai.Constants
scoreboard players operation #AI.ROT.Y ai.MATH -= #TE.ROT.Y ai.MATH
execute if score #AI.ROT.Y ai.MATH matches ..-1 run scoreboard players operation #AI.ROT.Y ai.MATH *= -1 ai.Constants


#title @p actionbar "TARGET ENTITY IN VISIBLE CONE"
execute if score #AI.ROT.X ai.MATH < @s ai.ViewAngle if score #AI.ROT.Y ai.MATH < @s ai.ViewAngle run return 1
#title @p actionbar "TARGET ENTITY NOT IN VISIBLE CONE"
return 0