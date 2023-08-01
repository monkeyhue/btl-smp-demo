#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 run data modify entity @s item.tag.Damage set value 3
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p feet run tp @s ~ ~ ~ ~180 0
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set %btl.animLength monkeyhue.objmc1 20
execute unless score @s monkeyhue.tempAI matches 3 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 on vehicle run effect give @s minecraft:slowness infinite 99 true
execute if score @s monkeyhue.time2 matches 3 run function btl:e/mob/snow_zombie/anim/hurt

execute if score @s monkeyhue.time2 matches 17.. run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time2 matches 17.. on vehicle run effect clear @s slowness