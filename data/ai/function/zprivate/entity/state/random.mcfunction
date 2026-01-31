# // Idle = 0;  Walking = 1; Sprinting = 2; Jumping = 3; Walk+Jumping = 4; Sprint+Jumping = 5
execute as @e[tag=ai.mannequin, tag=!ai.SmartMode] store result score @s ai.State run random value 1..2
#execute as @e[tag=ai.mannequin,scores={ai.State=0}] store result score @s ai.State run scoreboard players set @s ai.State 5

schedule function ai:zprivate/entity/state/random 2s
