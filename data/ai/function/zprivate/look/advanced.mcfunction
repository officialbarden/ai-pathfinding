# // IF chasing player, focus on player.
execute if entity @s[scores={ai.Mode=2}] run return fail

scoreboard players operation #ID ai.ID = @s ai.ID
execute as @s[tag=ai.LookOnlyAtPath, predicate=ai:bool/is_moving] at @s anchored eyes facing entity @n[tag=ai.PathFound, predicate=ai:id, type=marker] eyes rotated ~ 0 run return run function ai:zprivate/look/init

execute unless entity @s[tag=ai.RandomlyLookAnywhere] run return fail
execute as @s[tag=ai.LookAtInterestingMob] anchored eyes facing entity @n[type=#ai:interesting,distance=..30,gamemode=!spectator] eyes rotated ~ ~ run function ai:zprivate/look/init
execute as @s[tag=!ai.LookInDir,tag=!ai.LookAtInterestingMob,predicate=ai:bool/is_moving] anchored eyes facing entity @n[type=marker,tag=ai.PathFound,predicate=ai:id] eyes rotated ~ ~-35 run function ai:zprivate/look/init