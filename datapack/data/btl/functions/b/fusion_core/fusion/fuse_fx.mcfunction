#--- Variables ---
#monkeyhue.temp1: Determines if the fusion has valid items
#monkeyhue.time1: Timer for events
#monkeyhue.time2: CustomModelData of original item

#--- Repeating timer and fx ---
scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time2 matches 6540006 run particle dust 1.000 0.616 0.000 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2
execute if score @s monkeyhue.time2 matches 6540007 run particle dust 0.675 1.000 0.078 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 3
execute if score @s monkeyhue.time2 matches 6540008 run particle dust 1.000 0.620 0.941 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2
execute if score @s monkeyhue.time2 matches 6540008 run particle dust 0.337 0.000 0.808 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2

execute if score @s monkeyhue.time1 matches ..50 run particle cloud ~ ~1.3 ~ 0.05 0.05 0.05 0.02 1

#--- Compare Items ---
#//If this returns 1, then the items are different. Force return of items at the end
#//If this returns 0, then they are the same and good to go for fusion!
execute if score @s monkeyhue.time1 matches 18 run data modify storage btl:temp fusionCompare set from storage btl:temp fusion.[0].tag.btl.id
execute if score @s monkeyhue.time1 matches 18 store result score @s monkeyhue.temp1 run data modify storage btl:temp fusionCompare set from storage btl:temp fusion.[1].tag.btl.id

#--- Check if the items actually have power levels. If not, force return ---
execute if score @s monkeyhue.time1 matches 28 unless data storage btl:temp fusion[0].tag.btl.power run scoreboard players set @s monkeyhue.temp1 1

#--- Calculate power ---
#//Formula: g1 + p/(50+(|g1-g2|^2/20))
#//Super fusions are 7500, Ultra fusions are 10000
#//Because this part's so large, I stuffed it in one function
execute if score @s monkeyhue.time1 matches 40 if score @s monkeyhue.temp1 matches 0 run function btl:b/fusion_core/fusion/calculate_power

#--- Clean it up ---
execute if score @s monkeyhue.time1 matches 60.. run function btl:b/fusion_core/fusion/end