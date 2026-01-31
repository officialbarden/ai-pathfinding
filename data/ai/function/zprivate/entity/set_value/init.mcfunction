# This function file initializes values so that the player doesn't have to set it all the time.
scoreboard players operation @s ai.MovementSpeed = baseMovementSpeed ai.Values
scoreboard players operation @s ai.JumpStrength = baseJumpStrength ai.Values
scoreboard players operation @s ai.Reach = baseReach ai.Values
scoreboard players set @s ai.MaxDamage 1000
scoreboard players set @s ai.Reach 5000
scoreboard players set @s ai.AttackSpeed 30
scoreboard players set @s ai.PathfindingDuration 0
scoreboard players set @s ai.State 1
scoreboard players set @s ai.Mode 1
scoreboard players set @s ai.ChasingEntityMemoryDuration 100
# // Set ID
scoreboard players operation @s ai.ID = .global ai.ID
scoreboard players add .global ai.ID 1


scoreboard players operation @s ai.ViewRange = baseViewRange ai.Values
scoreboard players operation @s ai.ViewAngle = baseViewHalfAngle ai.Values

tag @s add ai.values.ready
