execute if block ~ ~ ~ #wooden_doors[open=true] run playsound block.wooden_door.close block @a ~ ~ ~ 1 1
$setblock ~ ~ ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=lower, open=false]
$setblock ~ ~1 ~ $(NAME)[facing=$(facing), hinge=$(hinge), half=upper, open=false]
kill @s