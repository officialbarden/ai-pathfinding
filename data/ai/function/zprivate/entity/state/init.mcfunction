scoreboard players operation #ID ai.ID = @s ai.ID

# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
execute if score @s ai.State matches 0 run return run function ai:zprivate/entity/state/idle/set
execute if score @s ai.State matches 1 run return run function ai:zprivate/entity/state/walking/set
execute if score @s ai.State matches 2 run return run function ai:zprivate/entity/state/sprinting/set
