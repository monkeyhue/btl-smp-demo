#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 run data modify entity @s ArmorItems[3].tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set #btl.animLength monkeyhue.objmc1 70
execute unless score @s monkeyhue.tempAI matches 2 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 2 run attribute @s minecraft:generic.knockback_resistance base set 0.7
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 run effect give @s minecraft:slowness infinite 99 true
execute if score @s monkeyhue.time2 matches 10 run playsound btl:entity.chillager.spell hostile @a ~ ~ ~ 0.5 1

execute unless score @s btl.w.battleID matches -1 if score @s monkeyhue.time2 matches 6 positioned ^ ^3.5 ^-0.5 run function btl:e/mob/chillager/event/spell
execute if score @s btl.w.battleID matches -1 if score @s monkeyhue.time2 matches 6 positioned ^ ^3.5 ^-0.5 run function btl:e/mob/chillager/event/spell_weak
execute if score @s btl.w.battleID matches -1 if score @s monkeyhue.time2 matches 12 positioned ^-2 ^3 ^-0.5 run function btl:e/mob/chillager/event/spell_weak
execute if score @s btl.w.battleID matches -1 if score @s monkeyhue.time2 matches 18 positioned ^2 ^3 ^-0.5 run function btl:e/mob/chillager/event/spell_weak

execute if score @s monkeyhue.time2 matches 68.. run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time2 matches 68.. run effect clear @s slowness