#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 5 on passengers run data modify entity @s item.tag.Damage set value 4
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set #btl.animLength monkeyhue.objmc1 70
execute unless score @s monkeyhue.tempAI matches 5 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 5 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set @s monkeyhue.tempAI 5

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 6 run playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 10 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 3 0.5
execute if score @s monkeyhue.time2 matches 10..34 run particle snowflake ~ ~1.6 ~ 1.2 0.8 1.2 0.15 20
execute if score @s monkeyhue.time2 matches 10..34 run particle cloud ~ ~1.6 ~ 1.2 0.8 1.2 0.15 5
execute if score @s monkeyhue.time2 matches 14 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 18 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 22 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 26 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 30 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 34 positioned ^ ^2 ^ summon area_effect_cloud run function btl:e/mob/yeti/event/spin_snow
execute if score @s monkeyhue.time2 matches 39 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 3 2
execute if score @s monkeyhue.time2 matches 50 run playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time2 matches 68 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time2 matches 15 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 15 as @a[distance=0..6] run function btl:e/mob/yeti/event/spinning
execute if score @s monkeyhue.time2 matches 25 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 25 as @a[distance=0..6] run function btl:e/mob/yeti/event/spinning
execute if score @s monkeyhue.time2 matches 35 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute if score @s monkeyhue.time2 matches 35 as @a[distance=0..6] run function btl:e/mob/yeti/event/spinning


execute if score @s monkeyhue.time2 matches 68.. run scoreboard players set @s monkeyhue.entity.AIState 1