scoreboard players set @s monkeyhue.entity.AIState 4
execute store result score @s monkeyhue.temp1 run data get entity @s item.tag.CustomModelData 1.0
scoreboard players add @s monkeyhue.temp1 1
execute store result entity @s item.tag.CustomModelData int 1.0 run scoreboard players get @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp1