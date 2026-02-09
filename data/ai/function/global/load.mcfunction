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
scoreboard objectives add ai.LostEntityGracePeriod dummy
scoreboard objectives add ai.RememberingLastPosOfEntity dummy
scoreboard objectives add ai.ViewRange dummy
scoreboard objectives add ai.ViewAngle dummy
scoreboard objectives add ai.TargetEntity.ViewAngle dummy
scoreboard objectives add ai.TargetEntity.ViewRange dummy
scoreboard objectives add ai.CanInteractWithWorld dummy


# // AI Configs (x1000):
scoreboard objectives add ai.MovementSpeed dummy
scoreboard objectives add ai.JumpStrength dummy
scoreboard objectives add ai.Reach dummy

# // Base Values that store Custom Config
scoreboard objectives add ai.baseMovementSpeed dummy
scoreboard objectives add ai.baseSprintSpeed dummy
scoreboard objectives add ai.baseJumpStrength dummy
scoreboard objectives add ai.baseReach dummy
scoreboard objectives add ai.baseViewAngle dummy
scoreboard objectives add ai.baseViewRange dummy
scoreboard objectives add ai.baseLostEntityGracePeriod dummy

# // Store Specific Values (x1000):
scoreboard objectives add ai.Values dummy
# // Don't override Base Values set by the Player.
execute unless score baseMovementSpeed ai.Values matches -2147483648..2147483647 run scoreboard players set baseMovementSpeed ai.Values 150
# execute unless score baseHealth ai.Values matches -2147483648..2147483647 run scoreboard players set baseHealth ai.Values 20000
execute unless score baseSprintSpeed ai.Values matches -2147483648..2147483647 run scoreboard players set baseSprintSpeed ai.Values 220
execute unless score baseJumpStrength ai.Values matches -2147483648..2147483647 run scoreboard players set baseJumpStrength ai.Values 410
execute unless score baseViewHalfAngle ai.Values matches -2147483648..2147483647 run scoreboard players set baseViewHalfAngle ai.Values 30000
execute unless score baseTargetEntityViewAngle ai.Values matches -2147483648..2147483647 run scoreboard players set baseTargetEntityViewAngle ai.Values 30000
execute unless score baseLostEntityGracePeriod ai.Values matches -2147483648..2147483647 run scoreboard players set baseLostEntityGracePeriod ai.Values 200

# // baseViewRange & baseReach are scaled (x10)
execute unless score baseViewRange ai.Values matches -2147483648..2147483647 run scoreboard players set baseViewRange ai.Values 300
execute unless score baseReach ai.Values matches -2147483648..2147483647 run scoreboard players set baseReach ai.Values 500
execute unless score baseTargetEntityViewRange ai.Values matches -2147483648..2147483647 run scoreboard players set baseTargetEntityViewRange ai.Values 1000


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