#--- Variables ---
#monkeyhue.temp1: Determines if the fusion has valid items
#monkeyhue.temp2: CustomModelData of original item
#monkeyhue.time1: Timer for events
#monkeyhue.time1: Timer for interaction

#--- Repeating timer and fx ---
scoreboard players add @s monkeyhue.time1 1
scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.temp6 matches 6540006 run particle dust 1.000 0.616 0.000 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2
execute if score @s monkeyhue.temp6 matches 6540007 run particle dust 0.318 0.941 1.000 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 3
execute if score @s monkeyhue.temp6 matches 6540008 run particle dust 1.000 0.620 0.941 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2
execute if score @s monkeyhue.temp6 matches 6540008 run particle dust 0.337 0.000 0.808 1 ~ ~0.2 ~ 0.36 0.12 0.36 0 2

execute if score @s monkeyhue.time1 matches ..50 run particle cloud ~ ~1.3 ~ 0.05 0.05 0.05 0.02 1

#--- Clean it up ---
execute if score @s monkeyhue.time1 matches 60.. run function btl:b/fusion_core/fusion/end