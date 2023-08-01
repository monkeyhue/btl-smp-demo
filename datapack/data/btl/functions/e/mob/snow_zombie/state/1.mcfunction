#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set %btl.animLength monkeyhue.objmc1 29
execute unless score @s monkeyhue.tempAI matches 1 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 on vehicle run effect give @s minecraft:slowness infinite 99 true
execute if score @s monkeyhue.time2 matches 1 run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time2 matches 16 positioned ^0 ^1 ^-1 run function btl:e/mob/snow_zombie/event/hurt

execute if score @s monkeyhue.time2 matches 28.. unless entity @p[distance=..2.75,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time2 matches 28.. on vehicle run effect clear @s slowness
execute if score @s monkeyhue.time2 matches 28.. run scoreboard players reset @s monkeyhue.time2