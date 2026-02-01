# // If doesn't have tag, don't run function file:
execute unless entity @s[tag=ai.LookInDir] run return fail
#execute if entity @s[predicate=ai:bool/is_moving,tag=ai.LookInDir] run return run tag @s remove ai.LookInDir
execute if entity @s[scores={ai.Mode=2}] run return fail

scoreboard players operation #ID ai.ID = @s ai.ID
execute unless entity @n[tag=ai.LookVector,type=marker,predicate=ai:id] run return fail

# // Turn:
execute unless score @s ai.TurnSpeed matches -2147483648..2147483647 store result score @s ai.TurnSpeed run random value 1..3
execute if score @s ai.TurnSpeed matches 1 run function ai:zprivate/look/turn_speed/1
execute if score @s ai.TurnSpeed matches 2 run function ai:zprivate/look/turn_speed/2
execute if score @s ai.TurnSpeed matches 3 run function ai:zprivate/look/turn_speed/3
