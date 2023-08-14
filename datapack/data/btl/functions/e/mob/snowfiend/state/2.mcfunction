#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 on passengers run data modify entity @s item.tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set #btl.animLength monkeyhue.objmc1 20
execute unless score @s monkeyhue.tempAI matches 2 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players add @s monkeyhue.temp2 1
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 run playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 13 run playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 13 positioned ^ ^ ^1.5 run damage @p[distance=..2.75,gamemode=!creative,gamemode=!spectator] 12 btl:snowfiend by @s
execute if score @s monkeyhue.time2 matches 13 positioned ^ ^ ^2 run particle explosion ~ ~0.5 ~ 0 0 0 0 1

execute if score @s monkeyhue.time2 matches 18.. run scoreboard players set @s monkeyhue.entity.AIState 1
