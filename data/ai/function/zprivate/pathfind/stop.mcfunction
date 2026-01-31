# // When ran, this function file stops the entity on the spot and gets rid of the path.
scoreboard players operation #ID ai.ID = @s ai.ID
# // Kill Path Markers:
kill @e[predicate=ai:id,tag=ai.PathFound,type=marker]

# // Remove the ai.Move tag.
tag @s remove ai.Move


