tag @s remove fixoffset
##                                          0.125
scoreboard players set ox ghostgui.math 125
scoreboard players set oy ghostgui.math 750
scoreboard players set bordery ghostgui.math 6200

execute if score @s ghostgui.window.offset_x matches -2147483648..2147483647 store result score x ghostgui.math run scoreboard players get @s ghostgui.window.offset_x
execute if score @s ghostgui.window.offset_y matches -2147483648..2147483647 store result score y ghostgui.math run scoreboard players get @s ghostgui.window.offset_x

execute unless score @s ghostgui.window.offset_x matches -2147483648..2147483647 store result score x ghostgui.math store result score @s ghostgui.window.offset_x run data get entity @s transformation.scale[0] 10
execute unless score @s ghostgui.window.offset_y matches -2147483648..2147483647 store result score y ghostgui.math store result score @s ghostgui.window.offset_y run data get entity @s transformation.scale[1] 10


scoreboard players operation x ghostgui.math *= ox ghostgui.math
scoreboard players operation y ghostgui.math *= oy ghostgui.math

execute if entity @s[tag=border] store result storage ghostgui:math yoffset float 0.00001 run scoreboard players operation y ghostgui.math += bordery ghostgui.math

#adds to current translation
execute store result score xcurrent ghostgui.math run data get entity @s transformation.translation[0] 1000000
execute store result score ycurrent ghostgui.math run data get entity @s transformation.translation[1] 1000000

#                       8 scale:
#                                x offset = 0.1         y offset = 0.6
#                                   100000                  600000
#                                                   +
#                            custom offset = 1                      1
#                                   1000000                 1000000
#                                                   =
#                                   1100000                 1600000
##SHOULD WORK...?

execute store result storage ghostgui:math xoffset float 0.00001 run scoreboard players operation xcurrent ghostgui.math += xoffset ghostgui.math
execute store result storage ghostgui:math yoffset float 0.00001 run scoreboard players operation ycurrent ghostgui.math += yoffset ghostgui.math


#x = 0.0125
#y = 0.075
function ghostgui:windows/editor/fixoffset_apply with storage ghostgui:math