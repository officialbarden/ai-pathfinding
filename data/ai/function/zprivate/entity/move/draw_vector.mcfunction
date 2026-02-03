# Create a Unit Vector
tp @s ^ ^ ^1

# Multiply Movement Speed for X,Z
execute store result score #ai.speed.X ai.Values run data get entity @s Pos[0] 1000
execute store result score #ai.speed.Y ai.Values run data get entity @s Pos[1] 1000
execute store result score #ai.speed.Z ai.Values run data get entity @s Pos[2] 1000
# // Movement Speed Multiplier
scoreboard players operation #ai.speed.X ai.Values *= @n[tag=ai.pathfinding,predicate=ai:id] ai.MovementSpeed
scoreboard players operation #ai.speed.Z ai.Values *= @n[tag=ai.pathfinding,predicate=ai:id] ai.MovementSpeed

execute unless score #ai.speed.Y ai.Values matches ..0 run scoreboard players operation #ai.speed.Y ai.Values = @n[tag=ai.pathfinding,predicate=ai:id] ai.JumpStrength

# // Create Motion NBT List (without Macros)
data remove storage ai:storage TEMP.AI.MOTION_X
data remove storage ai:storage TEMP.AI.MOTION_Y
data remove storage ai:storage TEMP.AI.MOTION_Z
execute store result storage ai:storage TEMP.AI.MOTION_X double 0.000001 run scoreboard players get #ai.speed.X ai.Values
execute store result storage ai:storage TEMP.AI.MOTION_Y double 0.001 run scoreboard players get #ai.speed.Y ai.Values
execute store result storage ai:storage TEMP.AI.MOTION_Z double 0.000001 run scoreboard players get #ai.speed.Z ai.Values

# // Kill Marker
kill @s
