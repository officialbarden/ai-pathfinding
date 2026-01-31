rotate @s ~ ~
execute store result score #TE.ROT.X ai.MATH run data get entity @s Rotation[0] 1000
execute store result score #TE.ROT.Y ai.MATH run data get entity @s Rotation[1] 1000
kill @s