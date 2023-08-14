#-------------------------------------------------------------#
#
# Yeti initializer
#
#-------------------------------------------------------------#

scoreboard players set @s monkeyhue.entity.maxHealth 600
execute at @a[distance=0..48] run scoreboard players add @s monkeyhue.entity.maxHealth 600
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

execute store result bossbar btl:blue max run scoreboard players get @s monkeyhue.entity.maxHealth
scoreboard players set @s monkeyhue.entity.AIState 1
scoreboard players set @s btl.w.battleID 1