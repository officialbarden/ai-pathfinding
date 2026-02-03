# This function file initializes values so that the player doesn't have to set it all the time.
scoreboard players operation @s ai.MovementSpeed = @s ai.baseMovementSpeed
scoreboard players operation @s ai.JumpStrength = @s ai.baseJumpStrength
scoreboard players operation @s ai.Reach = @s ai.baseReach
# // Set View Cone Dimensions
scoreboard players operation @s ai.ViewRange = @s ai.baseViewRange
scoreboard players operation @s ai.ViewAngle = @s ai.baseViewAngle

# ==================== Currently Redundant =========================
scoreboard players set @s ai.MaxDamage 1000
# scoreboard players set @s ai.Reach 5000
# scoreboard players set @s ai.AttackSpeed 30
# ==================================================================

scoreboard players set @s ai.PathfindingDuration 0
scoreboard players set @s ai.State 1
scoreboard players set @s ai.Mode 1
scoreboard players set @s ai.ChasingEntityMemoryDuration 100
# // Set ID
scoreboard players operation @s ai.ID = .global ai.ID
scoreboard players add .global ai.ID 1



# // Fallback if is NaN Value:
execute if score @s ai.MovementSpeed matches 0 run scoreboard players operation @s ai.MovementSpeed = baseMovementSpeed ai.Values
execute if score @s ai.JumpStrength matches 0 run scoreboard players operation @s ai.JumpStrength = baseJumpStrength ai.Values
execute if score @s ai.ViewRange matches 0 run scoreboard players operation @s ai.ViewRange = baseViewRange ai.Values
execute if score @s ai.ViewAngle matches 0 run scoreboard players operation @s ai.ViewAngle = baseViewHalfAngle ai.Values
execute if score @s ai.Reach matches 0 run scoreboard players operation @s ai.Reach = baseReach ai.Values

tag @s add ai.values.ready
