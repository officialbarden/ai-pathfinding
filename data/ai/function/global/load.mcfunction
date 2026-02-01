# // Important Scoreboards:

# // Store the state of the AI
# // Idle = 0;  Walking = 1; Sprinting = 2;
scoreboard objectives add ai.State dummy

# // Store the mode of the AI
# // Idle = 0;  Random Roaming = 1; Chasing Entity = 2;
scoreboard objectives add ai.Mode dummy

# // AI Entity Attributes (x1000)
scoreboard objectives add ai.Health dummy
scoreboard objectives add ai.RotationX dummy
scoreboard objectives add ai.RotationY dummy
scoreboard objectives add ai.PosX dummy
scoreboard objectives add ai.PosY dummy
scoreboard objectives add ai.PosZ dummy
scoreboard objectives add ai.AttackSpeed dummy
scoreboard objectives add ai.AttackDelay dummy
scoreboard objectives add ai.MaxDamage dummy
scoreboard objectives add ai.Gravity dummy
scoreboard objectives add ai.HurtTime dummy
scoreboard objectives add ai.TurnSpeed dummy
scoreboard objectives add ai.PathfindingDuration dummy
scoreboard objectives add ai.ChasingEntityMemoryDuration dummy
scoreboard objectives add ai.RememberingLastPosOfEntity dummy
scoreboard objectives add ai.ViewRange dummy
scoreboard objectives add ai.ViewAngle dummy


# // AI Configs (x1000):
scoreboard objectives add ai.MovementSpeed dummy
scoreboard objectives add ai.JumpStrength dummy
scoreboard objectives add ai.Reach dummy

# // Store Specific Values (x1000):
scoreboard objectives add ai.Values dummy
scoreboard players set baseMovementSpeed ai.Values 150
scoreboard players set baseHealth ai.Values 20000
scoreboard players set baseSprintSpeed ai.Values 220
scoreboard players set baseJumpStrength ai.Values 410
scoreboard players set baseViewHalfAngle ai.Values 30000

# // baseViewRange & baseReach are scaled (x10)
scoreboard players set baseViewRange ai.Values 300
scoreboard players set baseReach ai.Values 5

# // Store Constants for MATH
scoreboard objectives add ai.Constants dummy
scoreboard players set -1 ai.Constants -1

scoreboard objectives add ai.MATH dummy
scoreboard objectives add ai.RAYCAST dummy

# // ID system
scoreboard objectives add ai.ID dummy
execute unless score .global ai.ID matches -2147483648..2147483647 run scoreboard players set .global ai.ID 1

# // Scheduled Looping Files:
function ai:global/loop_3s
function ai:global/loop_1s