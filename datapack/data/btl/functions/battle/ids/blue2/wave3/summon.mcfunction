#--- Rng and fx ---
function btl:technical/rng/10
execute if score @s monkeyhue.rng.out matches ..74 run particle explosion ~ ~0.2 ~ 0 0 0 0 1
execute if score @s monkeyhue.rng.out matches ..74 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 2

#--- Mob randomization
execute if score @s monkeyhue.rng.out matches 0..6 run function btl:battle/ids/blue2/summon/snow_zombie
execute if score @s monkeyhue.rng.out matches 7 run function btl:battle/ids/blue2/summon/chillager
execute if score @s monkeyhue.rng.out matches 8..9 run function btl:battle/ids/blue2/summon/snowfiend

execute if score @s btl.w.mobs matches ..-1 run scoreboard players set @s btl.w.mobs 0
scoreboard players add @s btl.w.mobs 1
scoreboard players reset @s monkeyhue.time1