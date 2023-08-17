execute on passengers on passengers store result score @s btl.b.baseRotation run data get entity @s item.tag.display.color
scoreboard players operation @s btl.w.battleID = @e[type=interaction,limit=1,distance=..4,tag=btl.b.door] btl.w.battleID
scoreboard players operation @s btl.w.waveID = @e[type=interaction,limit=1,distance=..4,tag=btl.b.door] btl.w.waveID
scoreboard players set @s monkeyhue.entity.AIState 0
tag @s remove btl.new