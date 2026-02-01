# // Tick down timer so the entity forgets after timer ends:
scoreboard players remove @s[scores={ai.RememberingLastPosOfEntity=1..}] ai.RememberingLastPosOfEntity 1
scoreboard players set @s ai.State 1

execute at @s anchored eyes facing entity @n[tag=ai.PathFound, predicate=ai:id] eyes rotated ~ ~ run rotate @s ~ 0
#title @p actionbar "CAN'T SEE ENTITY"