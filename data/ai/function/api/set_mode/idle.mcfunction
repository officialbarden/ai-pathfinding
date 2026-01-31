# Command:
# execute as <ai> run function ai:api/set_mode/idle
scoreboard players operation #ID ai.ID = @s ai.ID
execute as @n[tag=ai.BeingTargetted, predicate=ai:id] run function ai:zprivate/entity/mode/chasing_entity/target_entity_reset

# // Idle = 0;  Roaming = 1; Chasing Entity = 2;
scoreboard players set @s ai.Mode 0

