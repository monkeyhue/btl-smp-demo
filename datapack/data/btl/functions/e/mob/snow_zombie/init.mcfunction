#-------------------------------------------------------------#
#
# Frozen Zombie initializer
#
#-------------------------------------------------------------#

scoreboard players set @s monkeyhue.entity.maxHealth 24
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

scoreboard players set @s monkeyhue.entity.AIState 0
execute if entity @s[tag=btl.t.avalanched] run scoreboard players set @s monkeyhue.entity.AIState 3
scoreboard players set @s btl.w.battleID 1