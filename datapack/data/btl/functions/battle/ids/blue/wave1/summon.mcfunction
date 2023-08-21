#--- Rng and fx ---
function btl:technical/rng/100
execute if score @s monkeyhue.rng.out matches ..59 run particle explosion ~ ~0.2 ~ 0 0 0 0 1
execute if score @s monkeyhue.rng.out matches ..59 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 2

#--- Mob randomization
execute if score @s monkeyhue.rng.out matches 0..19 run function btl:battle/ids/blue/summon/snow_skeleton
execute if score @s monkeyhue.rng.out matches 20..29 run function btl:battle/ids/blue/summon/chillager
execute if score @s monkeyhue.rng.out matches 30..59 run function btl:battle/ids/blue/summon/snow_zombie
execute if score @s monkeyhue.rng.out matches 60..89 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.snow_zombie"]}
execute if score @s monkeyhue.rng.out matches 90..99 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.chillager"]}

execute if score @s btl.w.mobs matches ..-1 run scoreboard players set @s btl.w.mobs 0
scoreboard players add @s btl.w.mobs 1
scoreboard players reset @s monkeyhue.time1