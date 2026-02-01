# Pathfinding Duration scoreboard is a duration timer that decides..
# ..how long the entity is allowed to pathfind until it has to change the path.

execute as @s[scores={ai.Mode=1}] store result score @s ai.PathfindingDuration run return run random value 100..120
execute as @s[scores={ai.Mode=2}] store result score @s ai.PathfindingDuration run return run random value 2..5
execute store result score @s ai.PathfindingDuration run random value 20..100
