playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 0.8 1
execute store result score @s monkeyhue.temp1 run data get entity @s ArmorItems[3].tag.display.color
scoreboard players add @s monkeyhue.temp1 1
execute store result entity @s ArmorItems[3].tag.display.color int 1.0 run scoreboard players get @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp1
execute on vehicle run scoreboard players reset @s monkeyhue.time1