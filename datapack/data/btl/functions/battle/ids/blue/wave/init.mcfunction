scoreboard players add @s btl.w.progress 1
execute if score @s btl.w.progress matches 120.. run scoreboard players set @s btl.w.waveID 1
execute store result bossbar btl:blue value run scoreboard players get @s btl.w.progress