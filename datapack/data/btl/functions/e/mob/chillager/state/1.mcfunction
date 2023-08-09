#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 run data modify entity @s ArmorItems[3].tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set #btl.animLength monkeyhue.objmc1 10
execute unless score @s monkeyhue.tempAI matches 1 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 1 run effect clear @s slowness
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 run attribute @s minecraft:generic.knockback_resistance base set 2.0
execute if score @s monkeyhue.time2 matches 2 run damage @s 0.1 btl:knockback by @r[distance=..50,gamemode=!creative,gamemode=!spectator]
execute if score @s monkeyhue.time2 matches 3 run attribute @s minecraft:generic.knockback_resistance base set 0.4
execute if score @s monkeyhue.time2 matches 200.. run scoreboard players reset @s monkeyhue.time2

scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 2 run playsound minecraft:entity.sheep.step hostile @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time3 matches 7 run playsound minecraft:entity.sheep.step hostile @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time3 matches 10.. run scoreboard players reset @s monkeyhue.time3

execute if score @s monkeyhue.time2 matches ..32 if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time2 matches 24.. if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2