#-------------------------------------------------------------#
#
# Yeti initializer
#
#-------------------------------------------------------------#

scoreboard players set @s[tag=btl.w.tier1] monkeyhue.entity.maxHealth 600
scoreboard players set @s[tag=btl.w.tier1] btl.w.battleID 1
execute if entity @s[tag=btl.w.tier1] at @a[distance=0..48] run scoreboard players add @s monkeyhue.entity.maxHealth 600
scoreboard players set @s[tag=btl.w.tier2] monkeyhue.entity.maxHealth 2000
scoreboard players set @s[tag=btl.w.tier2] btl.w.battleID 2
execute if entity @s[tag=btl.w.tier2] at @a[distance=0..48] run scoreboard players add @s monkeyhue.entity.maxHealth 2000
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

execute if entity @s[tag=btl.w.tier1] store result bossbar btl:blue max run scoreboard players get @s monkeyhue.entity.maxHealth
execute if entity @s[tag=btl.w.tier2] store result bossbar btl:blue2 max run scoreboard players get @s monkeyhue.entity.maxHealth
scoreboard players set @s monkeyhue.entity.AIState 1