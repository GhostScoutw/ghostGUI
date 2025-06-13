tag @s remove fixoffset
##                                          0.125
scoreboard players set ox ghostgui.math 125
scoreboard players set oy ghostgui.math 750
scoreboard players set bordery ghostgui.math 6200

execute store result score x ghostgui.math run data get entity @s transformation.scale[0] 10
execute store result score y ghostgui.math run data get entity @s transformation.scale[1] 10

execute store result storage ghostgui:math xoffset float 0.00001 run scoreboard players operation x ghostgui.math *= ox ghostgui.math


execute store result storage ghostgui:math yoffset float 0.00001 run scoreboard players operation y ghostgui.math *= oy ghostgui.math
execute if entity @s[tag=border] store result storage ghostgui:math yoffset float 0.00001 run scoreboard players operation y ghostgui.math += bordery ghostgui.math
#x = 0.0125
#y = 0.075
function ghostgui:windows/editor/fixoffset_apply with storage ghostgui:math