#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 run data modify entity @s item.tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set %btl.animLength monkeyhue.objmc1 70
execute unless score @s monkeyhue.tempAI matches 2 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 on vehicle run effect give @s minecraft:slowness infinite 99 true
execute if score @s monkeyhue.time2 matches 10 run playsound btl:entity.chillager.spell hostile @a ~ ~ ~ 0.5 1

execute if score @s monkeyhue.time2 matches 1 positioned ^0 ^2.5 ^ run function btl:e/mob/chillager/event/spell
execute if score @s monkeyhue.time2 matches 7 positioned ^2 ^2 ^-0.5 run function btl:e/mob/chillager/event/spell
execute if score @s monkeyhue.time2 matches 13 positioned ^-2 ^2 ^-0.5 run function btl:e/mob/chillager/event/spell

execute if score @s monkeyhue.time2 matches 70.. unless entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1
execute if score @s monkeyhue.time2 matches 70.. on vehicle run effect clear @s slowness
execute if score @s monkeyhue.time2 matches 70.. run scoreboard players reset @s monkeyhue.time2