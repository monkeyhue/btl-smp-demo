playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 0.6 0.8
execute store result score @s monkeyhue.temp1 run data get entity @s item.tag.display.color
scoreboard players add @s monkeyhue.temp1 1
execute store result entity @s item.tag.display.color int 1.0 run scoreboard players get @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp1