#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 11 on passengers run data modify entity @s item.tag.Damage set value 11
execute unless score @s monkeyhue.tempAI matches 11 run scoreboard players set %btl.animLength monkeyhue.objmc1 50
execute unless score @s monkeyhue.tempAI matches 11 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 11 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 11 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 11 run scoreboard players set @s monkeyhue.tempAI 11

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches ..16 facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute if score @s monkeyhue.time2 matches 16 run playsound minecraft:item.hoe.till hostile @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time2 matches 27 run playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 2 0.8
execute if score @s monkeyhue.time2 matches 27 positioned ^ ^0.5 ^1 summon area_effect_cloud run function btl:e/mob/yeti/event/throw_snow

execute if score @s monkeyhue.time2 matches 50.. run scoreboard players set @s monkeyhue.entity.AIState 1