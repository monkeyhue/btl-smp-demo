execute store result score @s monkeyhue.temp1 run data get entity @s Health
scoreboard players set @s monkeyhue.temp2 1023

#--- Get damage ---
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp1
execute on attacker run tag @s add btl.t.attacked
scoreboard players operation @s monkeyhue.temp2 *= @p[tag=btl.t.attacked] btl.player.power
scoreboard players operation @s monkeyhue.temp2 /= #btl.100 monkeyhue.temp1
execute as @p[tag=btl.t.attacked] run tag @s remove btl.t.attacked

#--- Add all other damages ---
scoreboard players operation @s monkeyhue.temp2 += @s btl.damage

#// On Fire
execute unless predicate btl:technical/on_fire run scoreboard players add @s monkeyhue.temp2 1

#// Hurt Time
execute if score @s monkeyhue.temp2 matches 1.. unless score @s monkeyhue.entity.hurtTime matches 0.. run scoreboard players set @s monkeyhue.entity.hurtTime 10

#--- Calc health ---
scoreboard players operation @s monkeyhue.entity.health -= @s monkeyhue.temp2

#// Cleanup
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2
scoreboard players reset @s btl.damage
data merge entity @s {Health:1024f}
