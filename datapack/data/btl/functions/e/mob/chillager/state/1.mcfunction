#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set %btl.animLength monkeyhue.objmc1 10
execute unless score @s monkeyhue.tempAI matches 1 on vehicle run damage @s 0.1 btl:knockback by @r[distance=..34,gamemode=!creative,gamemode=!spectator]
execute unless score @s monkeyhue.tempAI matches 1 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 200.. on vehicle run damage @s 0.1 btl:knockback by @r[distance=..34,gamemode=!creative,gamemode=!spectator]
execute if score @s monkeyhue.time2 matches 200.. run scoreboard players reset @s monkeyhue.time2

scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 2 run playsound minecraft:entity.sheep.step hostile @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time3 matches 7 run playsound minecraft:entity.sheep.step hostile @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time3 matches 10.. run scoreboard players reset @s monkeyhue.time3

execute if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2