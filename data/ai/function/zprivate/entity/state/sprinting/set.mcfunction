# // Set Scoreboards

# // Set Custom Value:
scoreboard players operation @s ai.MovementSpeed = @s ai.baseSprintSpeed
# // Fall back to base values:
execute if score @s ai.MovementSpeed matches 0 run scoreboard players operation @s ai.MovementSpeed = baseSprintSpeed ai.Values


# // Set Custom Value:
scoreboard players operation @s ai.JumpStrength = @s ai.baseJumpStrength
# // Fall back to base values:
execute if score @s ai.JumpStrength matches 0 run scoreboard players operation @s ai.JumpStrength = baseJumpStrength ai.Values
