execute as @s[predicate=!ai:on_ground] at @s if block ~ ~ ~ #climbable run data modify entity @s Motion[1] set from storage ai:storage TEMP.AI.MOTION_Y
execute as @s[predicate=ai:on_ground] run data modify entity @s Motion[1] set from storage ai:storage TEMP.AI.MOTION_Y
data modify entity @s Motion[0] set from storage ai:storage TEMP.AI.MOTION_X
data modify entity @s Motion[2] set from storage ai:storage TEMP.AI.MOTION_Z
