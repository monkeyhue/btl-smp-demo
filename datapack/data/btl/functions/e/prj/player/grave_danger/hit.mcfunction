damage @s 1 btl:knockback by @s
scoreboard players operation @s btl.damage = @e[type=item_display,tag=btl.prj.icebound_blade,distance=..4,limit=1,sort=nearest] btl.damage
execute as @e[type=item_display,limit=1,tag=btl.prj.grave_danger,sort=nearest] run function btl:e/prj/player/grave_danger/hit_ground