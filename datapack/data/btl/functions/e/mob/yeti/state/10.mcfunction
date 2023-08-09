#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 10 on passengers run data modify entity @s item.tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 10 run scoreboard players set #btl.animLength monkeyhue.objmc1 18
execute unless score @s monkeyhue.tempAI matches 10 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 10 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 10 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 10 run scoreboard players set @s monkeyhue.tempAI 10

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 run playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 9 run playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 9 positioned ^ ^ ^1 run damage @p[distance=..4,gamemode=!creative,gamemode=!spectator] 9 btl:yeti/default by @s

execute if score @s monkeyhue.time2 matches 17.. run scoreboard players set @s monkeyhue.entity.AIState 1
execute if score @s monkeyhue.time2 matches 17.. if entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 4
execute if score @s monkeyhue.time2 matches 17.. if score @s monkeyhue.time6 matches 300.. run scoreboard players set @s monkeyhue.entity.AIState 5