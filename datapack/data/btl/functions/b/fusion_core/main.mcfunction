#--- Init ---

#--- Fusion Process ---
execute if score @s monkeyhue.time1 matches 0.. run function btl:b/fusion_core/fusion/fuse_fx
execute if score @s monkeyhue.time2 matches 1.. run scoreboard players remove @s monkeyhue.time2 1