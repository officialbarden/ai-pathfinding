scoreboard players operation @s ai.SpeedY += @s ai.Gravity
scoreboard players operation ai.speed.Y ai.Values = @s ai.SpeedY

execute store result storage ai:storage TEMP.AI.MOTION_Y double -0.001 run scoreboard players get ai.speed.Y ai.Values
