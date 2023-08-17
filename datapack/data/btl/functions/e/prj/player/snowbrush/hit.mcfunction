execute if entity @s[tag=!btl.entity,type=!player] run damage @s 1.5 btl:player/weapon/snowbrush by @p
execute if entity @s[tag=btl.entity] run damage @s 1 btl:knockback by @p
execute if entity @s[tag=btl.entity] run scoreboard players operation @s btl.damage = @e[type=item_display,tag=btl.prj.snowbrush,distance=..4,limit=1,sort=nearest] btl.damage
execute as @e[type=item_display,limit=1,tag=btl.prj.snowbrush,sort=nearest] run function btl:e/prj/player/snowbrush/impact