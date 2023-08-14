#Generalized behavior for all mobs
execute if score @s monkeyhue.entity.health matches ..0 run scoreboard players set @s monkeyhue.entity.AIState -1
execute if score @s monkeyhue.entity.health > @s monkeyhue.entity.maxHealth run scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth
execute if score @s monkeyhue.entity.hurtTime matches 1.. run scoreboard players remove @s monkeyhue.entity.hurtTime 1

scoreboard players add @s monkeyhue.time1 1