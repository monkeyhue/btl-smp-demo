execute store result score @s monkeyhue.temp1 run data get entity @s Health
scoreboard players set @s monkeyhue.temp2 1023
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp1
#scoreboard players operation @s monkeyhue.temp2 += @s btl.damage
execute at @s on passengers run scoreboard players operation @s monkeyhue.entity.health -= @e[limit=1,sort=nearest,tag=btl.hitbox,dx=0] monkeyhue.temp2
execute if score @s monkeyhue.temp2 matches 1.. on passengers unless score @s monkeyhue.entity.hurtTime matches 0.. run scoreboard players set @s monkeyhue.entity.hurtTime 10
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2
data merge entity @s {Health:1024f}
