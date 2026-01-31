# The Rotation Context of this Function file is the Rotation value which the entity interpolates to..

# // Kill First Marker
scoreboard players operation #ID ai.ID = @s ai.ID
kill @e[tag=ai.LookVector,predicate=ai:id,type=marker]

# // Spawn New Marker
execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["ai.LookVector", "new"]}
scoreboard players operation @n[tag=new,tag=ai.LookVector,type=marker] ai.ID = @s ai.ID
tag @n[tag=ai.LookVector,predicate=ai:id] remove new

# // Rotate Marker:
execute as @n[tag=ai.LookVector,predicate=ai:id,type=marker] rotated ~ ~ run rotate @s ~ ~

# // Enable Rotation
tag @s add ai.LookInDir
