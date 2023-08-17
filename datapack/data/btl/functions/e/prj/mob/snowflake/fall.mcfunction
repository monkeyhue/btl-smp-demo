execute if score @s monkeyhue.time1 matches 240.. run kill @s
execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet positioned ~ ~-0.04 ~ run teleport @s ^ ^ ^0.15 ~ ~
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run function btl:e/prj/mob/snowflake/hit
execute if score @s monkeyhue.time1 matches 20.. unless block ~ ~-0.4 ~ #btl:unsolid run function btl:e/prj/mob/snowflake/hit_ground