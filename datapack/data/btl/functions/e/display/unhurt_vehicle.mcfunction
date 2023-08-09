execute store result score @s monkeyhue.temp1 run data get entity @s ArmorItems[3].tag.display.color 1.0
scoreboard players remove @s monkeyhue.temp1 1
execute store result entity @s ArmorItems[3].tag.display.color int 1.0 run scoreboard players get @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.entity.hurtTime