#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 3
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #btl.animLength monkeyhue.objmc1 48
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.temp2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1


execute if score @s monkeyhue.time2 matches 10..36 run particle snowflake ~ ~2.2 ~ 0.4 0.2 0.3 0.25 2
execute if score @s monkeyhue.time2 matches 8 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 3 0.5
execute if score @s monkeyhue.time2 matches 15 run summon armor_stand ~ 400 ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 15 as @a[distance=0..5] run function btl:e/mob/snowfiend/event/spinning
execute if score @s monkeyhue.time2 matches 25 run summon armor_stand ~ 400 ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 25 as @a[distance=0..5] run function btl:e/mob/snowfiend/event/spinning
execute if score @s monkeyhue.time2 matches 35 run summon armor_stand ~ 400 ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 35 as @a[distance=0..5] run function btl:e/mob/snowfiend/event/spinning

execute if score @s monkeyhue.time2 matches 46.. run scoreboard players set @s monkeyhue.entity.AIState 1
