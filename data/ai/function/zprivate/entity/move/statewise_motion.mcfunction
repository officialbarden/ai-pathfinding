# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5

# // Take the Rotation context of this function file and draw a unit vector to get the X,Y,Z components.
execute if score @s ai.State matches 4.. positioned 0.0 0.0 0.0 rotated ~ -45 summon marker run return run function ai:zprivate/entity/move/draw_vector
execute if score @s ai.State matches 3 positioned 0.0 0.0 0.0 rotated ~ -90 summon marker run return run function ai:zprivate/entity/move/draw_vector
execute if score @s ai.State matches 1..2 positioned 0.0 0.0 0.0 rotated ~ ~ summon marker run return run function ai:zprivate/entity/move/draw_vector
