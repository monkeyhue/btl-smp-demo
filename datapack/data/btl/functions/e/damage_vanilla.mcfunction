damage @s 0 minecraft:arrow by @p
execute store result score @s monkeyhue.entity.health run data get entity @s Health 100
scoreboard players operation @s monkeyhue.entity.health -= @s btl.damage
execute if score @s monkeyhue.entity.health >= %btl.0 monkeyhue.temp1 store result entity @s Health float 0.01 run scoreboard players get @s monkeyhue.entity.health
execute if score @s monkeyhue.entity.health <= %btl.0 monkeyhue.temp1 run kill @s
scoreboard players reset @s btl.damage
