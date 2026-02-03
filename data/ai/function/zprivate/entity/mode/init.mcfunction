execute as @s[tag=ai.pathfinding, scores={ai.Mode=1}] at @s run return run function ai:zprivate/entity/mode/roaming/init
execute as @s[tag=ai.pathfinding, scores={ai.Mode=2}] at @s run return run function ai:zprivate/entity/mode/chasing_entity/init
