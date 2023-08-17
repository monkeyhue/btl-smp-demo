execute if entity @s[tag=!btl.entity,type=!player] run data merge entity @s {Fire:40s}
execute if entity @s[tag=btl.entity] run data merge entity @s {Fire:120s}
execute if entity @s[tag=!btl.entity,type=!player] run damage @s 5 btl:player/weapon/kernel_blaster by @p
execute if entity @s[tag=!btl.entity,type=player] run damage @s 4 btl:player/weapon/kernel_blaster by @p
execute if entity @s[tag=btl.entity] run damage @s 1 btl:knockback by @p
execute if entity @s[tag=btl.entity] run scoreboard players operation @s btl.damage = @e[type=item_display,tag=btl.prj.kernel_blaster,distance=..4,limit=1,sort=nearest] btl.damage
execute as @e[type=item_display,limit=1,tag=btl.prj.kernel_blaster,sort=nearest] run function btl:e/prj/player/kernel_blaster/impact