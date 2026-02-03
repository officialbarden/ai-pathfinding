# // Get Block State via BlockState Library
# https://github.com/Triton365/BlockState
summon item_display ~ ~ ~ {UUID:[I;0,0,0,0]}

execute positioned ~ ~ ~ run loot replace entity 0-0-0-0-0 contents loot blockstate:get
data remove storage ai:storage TEMP.MACRO.OPEN_DOORS
data modify storage ai:storage TEMP.MACRO.OPEN_DOORS.DOOR set from entity 0-0-0-0-0 item.components."minecraft:custom_data"
data modify storage ai:storage TEMP.MACRO.OPEN_DOORS.DOOR.Properties.NAME set from entity 0-0-0-0-0 item.components."minecraft:custom_data".Name
kill 0-0-0-0-0

# // Close Door Correctly Via Macro:
function ai:zprivate/entity/actions/interact/doors/close_macro with storage ai:storage TEMP.MACRO.OPEN_DOORS.DOOR.Properties
