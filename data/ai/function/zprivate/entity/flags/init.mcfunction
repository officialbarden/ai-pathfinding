scoreboard players operation #ID ai.ID = @s ai.ID

# // Give Entity Special Tags:
execute as @e[tag=ai.BeingTargetted, predicate=ai:id] at @s run function ai:zprivate/entity/flags/caught/init
