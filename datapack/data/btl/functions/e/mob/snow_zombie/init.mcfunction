#-------------------------------------------------------------#
#
# Frozen Zombie initializer
#
#-------------------------------------------------------------#

scoreboard players set @s[tag=btl.w.tier0] monkeyhue.entity.maxHealth 24
scoreboard players set @s[tag=btl.w.tier0] btl.w.battleID -1
scoreboard players set @s[tag=btl.w.tier1] monkeyhue.entity.maxHealth 24
scoreboard players set @s[tag=btl.w.tier1] btl.w.battleID 1
scoreboard players set @s[tag=btl.w.tier2] monkeyhue.entity.maxHealth 40
scoreboard players set @s[tag=btl.w.tier2] btl.w.battleID 2
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

scoreboard players set @s monkeyhue.entity.AIState 0
execute if entity @s[tag=btl.t.avalanched] run scoreboard players set @s monkeyhue.entity.AIState 3