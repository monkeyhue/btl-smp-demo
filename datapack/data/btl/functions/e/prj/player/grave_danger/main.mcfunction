execute if score @s monkeyhue.time1 matches 30.. run function btl:e/prj/player/grave_danger/hit_ground
teleport @s ^ ^ ^1.5 ~ ~

particle smoke ^ ^0.4 ^ 0.3 0.1 0.3 0.05 1

execute positioned ~-0.25 ~-0.5 ~ as @e[dx=0.5,dy=1,type=#btl:mobs,limit=1] run function btl:e/prj/player/grave_danger/hit

execute unless block ~ ~-0.2 ~ #btl:unsolid run function btl:e/prj/player/grave_danger/hit_ground
