# // Change State:
#function ai:zprivate/entity/mode/chasing_entity/change_state

# // Remove the ai.BeingTargetted Tag and Reset Score
#execute as @n[tag=ai.BeingTargetted, predicate=ai:id] run function ai:zprivate/entity/mode/chasing_entity/target_entity_reset