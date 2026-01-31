# // You need a tick file to detect whether the pathfinding was successful or not.
# Check if there exists an entity which was supposed to pathfind but couldn't pathfind:
execute as @e[tag=astar.pathfinder] if entity @e[tag=astar, tag=!astar.finished] run function astar:failed
