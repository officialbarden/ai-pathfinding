scoreboard players set @s astar.status 0
tag @s remove astar.pathfinder
kill @e[tag=astar]

# // Error Message:
tellraw @a [{"text":"[A*]", color:"gray"},{"text":" Couldn't Find Path. Either try changing config values in astar.config scoreboard or setting the value for maxCommandChainLength to a much higher value.", "color":"red"}]
