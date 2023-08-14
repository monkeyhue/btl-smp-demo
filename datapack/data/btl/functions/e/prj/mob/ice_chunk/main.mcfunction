execute if score @s monkeyhue.time1 matches 80.. run kill @s
execute if score @s monkeyhue.time1 matches 39.. run teleport @s ^ ^ ^1.2 ~ ~
execute if score @s monkeyhue.time1 matches 37.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run function btl:e/prj/mob/ice_chunk/hit
execute if score @s monkeyhue.time1 matches 44.. unless block ~ ~ ~ #btl:unsolid run function btl:e/prj/mob/ice_chunk/hit


execute if score @s monkeyhue.time1 matches ..40 run particle snowflake ~ ~0.4 ~ 0.4 0.3 0.4 0 1
execute if score @s monkeyhue.time1 matches 40.. run particle snowflake ~ ~0.4 ~ 0.4 0.3 0.4 0.1 3

execute if score @s monkeyhue.time1 matches 37 run function btl:e/prj/mob/ice_chunk/anim/fire
execute if score @s monkeyhue.time1 matches 39 facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
