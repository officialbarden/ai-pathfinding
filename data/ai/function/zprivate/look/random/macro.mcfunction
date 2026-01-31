# // Choose between looking randomly or looking at an interesting mob..
execute store result score #BOOL ai.Values run random value 0..2

execute if score #BOOL ai.Values matches 0 run tag @s remove ai.LookAtInterestingMob
$execute if score #BOOL ai.Values matches 0 rotated as @s rotated $(X) $(Y) run return run function ai:zprivate/look/init

execute if score #BOOL ai.Values matches 1 run tag @s add ai.LookAtInterestingMob
execute if score #BOOL ai.Values matches 2 run tag @s remove ai.LookInDir
