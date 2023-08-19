#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set #btl.animLength monkeyhue.objmc1 26
execute unless score @s monkeyhue.tempAI matches 1 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1.5 0.5
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches ..17 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~

execute if score @s monkeyhue.time2 matches 25.. run scoreboard players set @s monkeyhue.entity.AIState 2