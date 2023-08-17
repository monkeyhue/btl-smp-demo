scoreboard players add @s monkeyhue.time1 1

#Player-caused Projectiles
execute if entity @s[tag=btl.prj.icebound_blade] run function btl:e/prj/player/icebound_blade/main
execute if entity @s[tag=btl.prj.grave_danger] run function btl:e/prj/player/grave_danger/main
execute if entity @s[tag=btl.prj.kernel_blaster] run function btl:e/prj/player/kernel_blaster/main
execute if entity @s[tag=btl.prj.skull_staff] run function btl:e/prj/player/skull_staff/main
execute if entity @s[tag=btl.prj.snowbrush] run function btl:e/prj/player/snowbrush/main

#Entity-caused Projectiles
execute if entity @s[tag=btl.prj.snowflake] run function btl:e/prj/mob/snowflake/main
execute if entity @s[tag=btl.prj.snowflake_arena] run function btl:e/prj/mob/snowflake_arena/main
execute if entity @s[tag=btl.prj.chillager_ice] run function btl:e/prj/mob/ice_chunk/main
execute if entity @s[tag=btl.prj.avalanche] run function btl:e/prj/mob/avalanche/main

