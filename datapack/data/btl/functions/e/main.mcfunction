#--- Mobs ---#
execute if entity @s[tag=btl.e.spook] run function btl:e/mob/spook/main

execute if entity @s[tag=btl.e.snow_zombie] run function btl:e/mob/snow_zombie/main
execute if entity @s[tag=btl.e.snow_skeleton] run function btl:e/mob/snow_skeleton/main
execute if entity @s[tag=btl.e.blizzy] run function btl:e/mob/blizzy/main
execute if entity @s[tag=btl.e.snowfiend] run function btl:e/mob/snowfiend/main
execute if entity @s[tag=btl.e.chillager] run function btl:e/mob/chillager/main
execute if entity @s[tag=btl.e.snowbowler] run function btl:e/mob/snowbowler/main
execute if entity @s[tag=btl.e.yeti] run function btl:e/mob/yeti/main

#--- Bosses ---#

#--- Non-mob Entities ---#
execute if entity @s[tag=btl.prj] run function btl:e/prj/main
execute if entity @s[tag=btl.temp] run function btl:e/temp/main