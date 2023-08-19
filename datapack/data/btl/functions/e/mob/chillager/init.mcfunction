#-------------------------------------------------------------#
#
# Chillager initializer
#
#-------------------------------------------------------------#

scoreboard players set @s[tag=btl.w.tier0] monkeyhue.entity.maxHealth 24
scoreboard players set @s[tag=btl.w.tier0] btl.w.battleID -1
scoreboard players set @s[tag=btl.w.tier1] monkeyhue.entity.maxHealth 32
scoreboard players set @s[tag=btl.w.tier1] btl.w.battleID 1
scoreboard players set @s[tag=btl.w.tier2] monkeyhue.entity.maxHealth 72
scoreboard players set @s[tag=btl.w.tier2] btl.w.battleID 2
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

scoreboard players set @s monkeyhue.entity.AIState 0