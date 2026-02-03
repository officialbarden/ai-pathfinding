execute if block ~ ~ ~ #wooden_doors[open=false] run playsound block.wooden_door.open block @a ~ ~ ~ 1 1
$setblock ~ ~ ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=lower, open=true]
$setblock ~ ~1 ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=upper, open=true]
tag @s remove ai.PathFound.DoorHere