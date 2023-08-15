scoreboard players add @s monkeyhue.time1 1

#Player-caused Projectiles
execute if entity @s[tag=btl.prj.icebound_blade] run function btl:e/prj/player/icebound_blade/main
execute if entity @s[tag=btl.prj.grave_danger] run function btl:e/prj/player/grave_danger/main

#Entity-caused Projectiles
execute if entity @s[tag=btl.prj.snowflake] run function btl:e/prj/mob/snowflake/main
execute if entity @s[tag=btl.prj.chillager_ice] run function btl:e/prj/mob/ice_chunk/main
execute if entity @s[tag=btl.prj.avalanche] run function btl:e/prj/mob/avalanche/main

