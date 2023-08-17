data modify storage btl:temp currentKill set from storage btl:root activeBattles[{id:2}].kills[0]

execute if data storage btl:temp {currentKill:"snow_zombie"} run scoreboard players add @s btl.w.progress 160
execute if data storage btl:temp {currentKill:"chillager"} run scoreboard players add @s btl.w.progress 400
execute if data storage btl:temp {currentKill:"snowfiend"} run scoreboard players add @s btl.w.progress 1000

data remove storage btl:root activeBattles[{id:2}].kills[0]
scoreboard players remove @s btl.w.mobs 1