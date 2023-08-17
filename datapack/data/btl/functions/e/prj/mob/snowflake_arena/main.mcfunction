particle snowflake ~ ~0 ~ 0 0 0 0.01 1
execute if score @s monkeyhue.time1 matches 240.. run kill @s
teleport @s ^ ^-0.05 ^ ~ ~
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run function btl:e/prj/mob/snowflake/hit
execute if score @s monkeyhue.time1 matches 60.. unless block ~ ~-0.4 ~ #btl:unsolid run function btl:e/prj/mob/snowflake/impact