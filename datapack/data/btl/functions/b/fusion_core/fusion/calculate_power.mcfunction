#--- Variables ---
#monkeyhue.temp2: g1, the stronger item
#monkeyhue.temp3: g2, the weaker item
#monkeyhue.temp4: p, the base modifier of the fusion
#monkeyhue.temp5: Actual temporary score
#monkeyhue.time2: CustomModelData of original item
#btl.sum: Resulting power

#--- First, get the stronger item ---
scoreboard players set @s monkeyhue.temp2 0
scoreboard players reset @s btl.sum
execute store result score @s monkeyhue.temp3 run data get storage btl:temp fusion.item[0][0].tag.btl.power
execute store result score @s monkeyhue.temp5 run data get storage btl:temp fusion.item[0][1].tag.btl.power
scoreboard players operation @s monkeyhue.temp2 > @s monkeyhue.temp3
scoreboard players operation @s monkeyhue.temp2 > @s monkeyhue.temp5
scoreboard players operation @s monkeyhue.temp3 < @s monkeyhue.temp5

#--- Then get the p value ---
execute if score @s monkeyhue.temp6 matches 6540006 run scoreboard players set @s monkeyhue.temp4 400000
execute if score @s monkeyhue.temp6 matches 6540007 run scoreboard players set @s monkeyhue.temp4 600000
execute if score @s monkeyhue.temp6 matches 6540008 run scoreboard players set @s monkeyhue.temp4 800000

#--- Now, operation time ---
scoreboard players operation @s btl.sum += @s monkeyhue.temp2

#//|g1 - g2|^2
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp3
scoreboard players operation @s monkeyhue.temp2 *= @s monkeyhue.temp2
scoreboard players operation @s monkeyhue.temp2 *= #btl.100 monkeyhue.temp1

#// (x/20 + 50)
scoreboard players set @s monkeyhue.temp5 20
scoreboard players operation @s monkeyhue.temp2 /= @s monkeyhue.temp5
scoreboard players set @s monkeyhue.temp5 8000
scoreboard players operation @s monkeyhue.temp5 += @s monkeyhue.temp2

#//Finish it
scoreboard players operation @s monkeyhue.temp4 /= @s monkeyhue.temp5
scoreboard players remove @s monkeyhue.temp4 3
function btl:technical/rng/10
scoreboard players operation @s monkeyhue.temp4 += @s monkeyhue.rng.out
scoreboard players operation @s btl.sum += @s monkeyhue.temp4
