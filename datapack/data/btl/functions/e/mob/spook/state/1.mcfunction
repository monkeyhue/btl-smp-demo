#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 run function btl:e/mob/spook/anim/0
execute unless score @s monkeyhue.tempAI matches 1 run function btl:technical/rng/200
execute unless score @s monkeyhue.tempAI matches 1 store result score @s monkeyhue.time2 run scoreboard players get @s monkeyhue.rng.out
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1

execute positioned ~ ~-0.25 ~ facing entity @p[gamemode=!spectator,gamemode=!creative] eyes positioned ~ ~0.25 ~ run teleport @s ^ ^ ^0.2 ~180 0
function btl:e/mob/spook/anim/facing

execute if entity @a[gamemode=!spectator,gamemode=!creative,distance=..4.4] run scoreboard players set @s monkeyhue.entity.AIState 3
execute unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..64] run scoreboard players set @s monkeyhue.entity.AIState 0

execute if score @s monkeyhue.time2 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 2