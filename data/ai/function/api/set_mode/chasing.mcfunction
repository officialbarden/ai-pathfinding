# // Command Skeleton:
# execute as <ai> at @s as <target_entity> run function ai:api/set_mode/chasing

# // AS Target Entity:
scoreboard players operation #ID ai.ID = @n[tag=ai.pathfinding] ai.ID
scoreboard players operation @s ai.ID = #ID ai.ID
tag @s add ai.BeingTargetted

# // Idle = 0;  Roaming = 1; Chasing Entity = 2;
scoreboard players set @n[tag=ai.pathfinding, predicate=ai:id] ai.Mode 2
