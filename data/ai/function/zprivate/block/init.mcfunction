scoreboard players operation #ID ai.ID = @s ai.ID
execute as @s[tag=!ai.PathFound.DoorHere] at @s if block ~ ~ ~ #ai:doors[open=false] run function ai:zprivate/block/door/init
