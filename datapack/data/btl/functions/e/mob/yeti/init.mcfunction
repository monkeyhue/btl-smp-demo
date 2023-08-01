#-------------------------------------------------------------#
#
# Yeti initializer
#
#-------------------------------------------------------------#

scoreboard players set @s monkeyhue.entity.maxHealth 500
execute at @a[distance=0..32] run scoreboard players add @s monkeyhue.entity.maxHealth 500
scoreboard players operation @s monkeyhue.entity.health = @s monkeyhue.entity.maxHealth

scoreboard players set @s monkeyhue.entity.AIState 1

bossbar add btl:yeti "Yeti"
bossbar set btl:yeti color blue
bossbar set btl:yeti style notched_10
bossbar set btl:yeti players @a
execute store result bossbar btl:yeti max run scoreboard players get @s monkeyhue.entity.maxHealth