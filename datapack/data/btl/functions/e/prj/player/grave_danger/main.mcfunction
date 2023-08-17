#// Trajectory
teleport @s ^ ^ ^1.32 ~ ~

#// Fx
execute if score @s monkeyhue.time1 matches 3.. run particle item deepslate_bricks ^ ^0.2 ^ 0.3 0.1 0.3 0.1 2

#// Death Cases
execute if score @s monkeyhue.time1 matches 2.. positioned ~-0.75 ~-0.5 ~-0.75 as @e[dx=0.5,dy=0,dz=0.5,type=#btl:mobs,limit=1] run function btl:e/prj/player/grave_danger/hit
execute if score @s monkeyhue.time1 matches 26.. run function btl:e/prj/player/grave_danger/hit_ground
execute positioned ~ ~-0.2 ~ unless block ^ ^ ^0.2 #btl:unsolid run function btl:e/prj/player/grave_danger/hit_ground
execute positioned ~ ~-0.2 ~ unless block ^ ^ ^-0.2 #btl:unsolid run function btl:e/prj/player/grave_danger/hit_ground
