execute if score #btl.gamerule.doMobSpawning btl.sum matches 1 if biome ~ ~ ~ #btl:spawning/blue run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.natural.blue"]}
#execute if predicate btl:technical/is_night run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.natural.night"]}

scoreboard players reset #btl.mobTimer monkeyhue.time1