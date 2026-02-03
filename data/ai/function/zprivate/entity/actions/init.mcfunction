scoreboard players operation #ID ai.ID = @s ai.ID
execute if entity @s[tag=ai.CanOpenDoors] at @s run function ai:zprivate/entity/actions/interact/open_doors
