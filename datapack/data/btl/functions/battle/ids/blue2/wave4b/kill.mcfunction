data modify storage btl:temp currentKill set from storage btl:root activeBattles[{id:2}].kills[0]

data remove storage btl:root activeBattles[{id:2}].kills[0]
scoreboard players remove @s btl.w.mobs 1