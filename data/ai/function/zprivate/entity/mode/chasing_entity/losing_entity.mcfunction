# // Tick down timer so the entity forgets after timer ends:
scoreboard players remove @s ai.RememberingLastPosOfEntity 1
scoreboard players set @s ai.State 1

#title @p actionbar "CAN'T SEE ENTITY"