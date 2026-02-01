# // Look into a Random Direction Every 3 seconds.
execute as @e[tag=ai, tag=ai.RandomlyLookAnywhere, scores={ai.Mode=1}] at @s run function ai:zprivate/look/random/loop

schedule function ai:global/loop_3s 3s replace
