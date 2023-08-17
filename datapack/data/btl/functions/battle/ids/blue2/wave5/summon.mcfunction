#--- Rng and fx ---
function btl:technical/rng/100
execute if score @s monkeyhue.rng.out matches ..59 run particle explosion ~ ~0.2 ~ 0 0 0 0 1
execute if score @s monkeyhue.rng.out matches ..59 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 2

#--- Mob randomization
execute if score @s monkeyhue.rng.out matches 0..9 run function btl:battle/ids/blue2/summon/snow_zombie
execute if score @s monkeyhue.rng.out matches 10..29 run function btl:battle/ids/blue2/summon/snow_skeleton
execute if score @s monkeyhue.rng.out matches 30..49 run function btl:battle/ids/blue2/summon/chillager
execute if score @s monkeyhue.rng.out matches 50..54 run function btl:battle/ids/blue2/summon/blizzy
execute if score @s monkeyhue.rng.out matches 55..59 run function btl:battle/ids/blue2/summon/snowfiend
execute if score @s monkeyhue.rng.out matches 59..74 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.snow_zombie2"]}
execute if score @s monkeyhue.rng.out matches 75..84 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.chillager2"]}
execute if score @s monkeyhue.rng.out matches 85..94 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.blizzy2"]}
execute if score @s monkeyhue.rng.out matches 94..99 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.snowfiend2"]}

execute if score @s btl.w.mobs matches ..-1 run scoreboard players set @s btl.w.mobs 0
scoreboard players add @s btl.w.mobs 1
scoreboard players reset @s monkeyhue.time1