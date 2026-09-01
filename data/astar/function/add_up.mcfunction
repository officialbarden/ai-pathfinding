# Add up numbers
scoreboard players operation @s astar.f = @s astar.g
scoreboard players operation @s astar.f += @s astar.h

execute if function #astar:eval_node run return 1
execute store result score @s astar.f run compute default integer astar:added_cost