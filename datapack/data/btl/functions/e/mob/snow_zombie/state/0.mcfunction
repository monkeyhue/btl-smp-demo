#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 run data modify entity @s ArmorItems[3].tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #btl.animLength monkeyhue.objmc1 30
execute unless score @s monkeyhue.tempAI matches 0 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 run attribute @s minecraft:generic.knockback_resistance base set 2.0
execute if score @s monkeyhue.time2 matches 2 run damage @s 0.1 btl:knockback by @r[distance=..34,gamemode=!creative,gamemode=!spectator]
execute if score @s monkeyhue.time2 matches 3 run attribute @s minecraft:generic.knockback_resistance base set 0.6
execute if score @s monkeyhue.time2 matches 200.. run scoreboard players reset @s monkeyhue.time2

scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 5 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 0.8 1
execute if score @s monkeyhue.time3 matches 20 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 0.8 1
execute if score @s monkeyhue.time3 matches 30.. run scoreboard players reset @s monkeyhue.time3

execute if entity @p[distance=..2.25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1