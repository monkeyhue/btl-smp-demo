execute if entity @s[tag=!btl.entity,type=!player] run damage @s 6 btl:player/weapon/icebound_blade by @p
execute if entity @s[tag=btl.entity] run damage @s 1 btl:knockback by @p
execute if entity @s[tag=btl.entity] run scoreboard players operation @s btl.damage = @e[type=item_display,tag=btl.prj.icebound_blade,distance=..4,limit=1,sort=nearest] btl.damage