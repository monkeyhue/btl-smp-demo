execute if score @s monkeyhue.time5 matches 5 run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540000}},Motion:[0.0,-0.36,0.0],Tags:["btl.t.fakefalling","smithed.entity","smithed.strict"]}
ride @s mount @e[type=snowball,distance=0..6,limit=1,sort=nearest,tag=btl.t.fakefalling]
scoreboard players set @s monkeyhue.time5 6