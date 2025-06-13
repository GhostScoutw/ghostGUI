tag @s add this.root

execute as @e[tag=editor,tag=area] if score @s ghostgui.editor.id = @n[tag=this.root] ghostgui.editor.id run tag @s add this.area
execute as @e[tag=editor,tag=background] if score @s ghostgui.editor.id = @n[tag=this.root] ghostgui.editor.id run tag @s add this.background
execute as @e[tag=editor,tag=border] if score @s ghostgui.editor.id = @n[tag=this.root] ghostgui.editor.id run tag @s add this.border


execute as @e[tag=this.area,tag=areain] positioned as @n[tag=this.root] rotated as @s run tp @s ^ ^ ^-4 ~1 0

execute as @e[tag=this.area,tag=areaout] positioned as @n[tag=this.root] rotated as @s run tp @s ^ ^ ^4 ~1 0


execute as @e[tag=this.background] at @s run function ghostgui:windows/editor/fixoffset

execute as @e[tag=this.border] at @s run function ghostgui:windows/editor/bordersize


tag @e[tag=editor,tag=this.background] remove this.background
tag @e[tag=editor,tag=this.border] remove this.border
tag @e[tag=editor,tag=this.area] remove this.area
tag @s remove this.root