#-------------------------------------------------------------#
#
# Frozen Zombie initializer
#
#-------------------------------------------------------------#

scoreboard players set @s monkeyhue.entity.maxHealth 24
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

scoreboard players set @s monkeyhue.entity.AIState 0