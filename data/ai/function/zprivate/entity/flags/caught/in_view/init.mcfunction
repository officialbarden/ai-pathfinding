# // Get Rotation values for X,Y of AI
execute store result score #TE.ROT.X ai.MATH run data get entity @s Rotation[0] 1000
execute store result score #TE.ROT.Y ai.MATH run data get entity @s Rotation[1] 1000

# // Get Rotation values for X,Y of LINE CONNECTING AI AND TARGET ENTITY.
execute at @s anchored eyes facing entity @n[tag=ai.pathfinding,predicate=ai:id] eyes rotated ~ ~ summon marker run function ai:zprivate/entity/flags/caught/in_view/posv

# // subtract angles.
scoreboard players operation #TE.ROT.X ai.MATH -= #AI.ROT.X ai.MATH
execute if score #TE.ROT.X ai.MATH matches ..-1 run scoreboard players operation #TE.ROT.X ai.MATH *= -1 ai.Constants
scoreboard players operation #TE.ROT.Y ai.MATH -= #AI.ROT.Y ai.MATH
execute if score #TE.ROT.Y ai.MATH matches ..-1 run scoreboard players operation #TE.ROT.Y ai.MATH *= -1 ai.Constants

title @p actionbar [{score:{name:"#TE.ROT.X", objective:"ai.MATH"}},",",{score:{name:"#TE.ROT.Y", objective:"ai.MATH"}}]

#title @p actionbar "TARGET ENTITY IN VISIBLE CONE"
execute if score #TE.ROT.X ai.MATH < baseTargetEntityViewAngle ai.Values if score #TE.ROT.Y ai.MATH < baseTargetEntityViewAngle ai.Values run return 1
#title @p actionbar "TARGET ENTITY NOT IN VISIBLE CONE"
return 0