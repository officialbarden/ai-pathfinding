execute if block ~ ~ ~ #wooden_doors[open=false] run playsound block.wooden_door.open block @a ~ ~ ~ 1 1
$setblock ~ ~ ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=lower, open=true]
$setblock ~ ~1 ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=upper, open=true]

# // Summon a Marker that can Close the Open Door if the AI Entity is tasked with closing doors.
execute if entity @n[tag=ai.pathfinding,tag=ai.CanCloseDoors] run summon marker ~ ~ ~ {Tags:["ai.PathFound.OpenDoorPendingClosing", "ai.new"]}
scoreboard players operation @n[tag=ai.PathFound.OpenDoorPendingClosing, tag=ai.new] ai.ID = @s ai.ID
tag @e[tag=ai.PathFound.OpenDoorPendingClosing,tag=ai.new] remove ai.new

tag @s remove ai.PathFound.DoorHere
