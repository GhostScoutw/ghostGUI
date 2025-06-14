# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true

# To make sure your datapack is working, a load message can be useful.
tellraw @a { "color": "#00FF00", "text": "The Code is Load"}

scoreboard objectives add ghostgui.window.max_x dummy
scoreboard objectives add ghostgui.window.max_y dummy

scoreboard objectives add ghostgui.window.offset_x dummy
scoreboard objectives add ghostgui.window.offset_y dummy

scoreboard objectives add ghostgui.editor.id dummy
scoreboard objectives add ghostgui.math dummy


# You can do whatever you want in the load function!
#give @a minecraft:sea_pickle[minecraft:enchantments={levels:{"minecraft:silk_touch":2}}]