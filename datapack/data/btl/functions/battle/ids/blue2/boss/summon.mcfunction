#--- Rng and fx ---
function btl:technical/rng/10
particle explosion ~ ~0.2 ~ 0 0 0 0 1
playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 2

#--- Mob randomization
execute if score @s monkeyhue.rng.out matches 0..5 run function btl:battle/ids/blue2/summon/snow_skeleton
execute if score @s monkeyhue.rng.out matches 6..8 run function btl:battle/ids/blue2/summon/chillager
execute if score @s monkeyhue.rng.out matches 9 run function btl:battle/ids/blue2/summon/blizzy

execute if score @s btl.w.mobs matches ..-1 run scoreboard players set @s btl.w.mobs 0
scoreboard players add @s btl.w.mobs 1
scoreboard players reset @s monkeyhue.time1