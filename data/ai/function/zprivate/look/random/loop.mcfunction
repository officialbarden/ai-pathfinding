execute store result storage ai:storage TEMP.AI.RANDOM_ROT.X float 0.01 run random value -18000..18000
execute store result storage ai:storage TEMP.AI.RANDOM_ROT.Y float 0.01 run random value -2000..2000

execute as @e[tag=ai.mannequin,type=mannequin] run function ai:zprivate/look/random/macro with storage ai:storage TEMP.AI.RANDOM_ROT
schedule function ai:zprivate/look/random/loop 3s
