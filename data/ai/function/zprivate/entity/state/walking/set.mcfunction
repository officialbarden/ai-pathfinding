# // Set Scoreboards

# // Set Custom Value:
scoreboard players operation @s ai.MovementSpeed = @s ai.baseMovementSpeed
scoreboard players set @s ai.JumpStrength 0
# // Fall back to base values:
execute if score @s ai.MovementSpeed matches 0 run scoreboard players operation @s ai.MovementSpeed = baseMovementSpeed ai.Values

attribute @s step_height base set 0.5