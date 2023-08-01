#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set %btl.animLength monkeyhue.objmc1 30
execute unless score @s monkeyhue.tempAI matches 0 on vehicle run damage @s 0.1 btl:knockback by @r[distance=..34,gamemode=!creative,gamemode=!spectator]
execute unless score @s monkeyhue.tempAI matches 0 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 160.. on vehicle run damage @s 0.1 btl:knockback by @r[distance=..34,gamemode=!creative,gamemode=!spectator]
execute if score @s monkeyhue.time2 matches 160.. run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 160.. run scoreboard players reset @s monkeyhue.time2

scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 5 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 0.8 1
execute if score @s monkeyhue.time3 matches 20 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 0.8 1
execute if score @s monkeyhue.time3 matches 30.. run scoreboard players reset @s monkeyhue.time3

execute if entity @p[distance=..2.25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1