#--- Variables ---

#--- Wrap it up ---
execute if entity @p[distance=..10,tag=btl.t.break_block,gamemode=creative] run function btl:b/fusion_core/destroy/destroy
execute unless score @s monkeyhue.time1 matches 0.. unless entity @p[distance=..10,tag=btl.t.break_block] run function btl:b/fusion_core/destroy/fail
execute if score @s monkeyhue.time1 matches 0.. run function btl:b/fusion_core/destroy/fail
execute unless score @s monkeyhue.time1 matches 0.. if entity @p[distance=..10,tag=btl.t.break_block] run function btl:b/fusion_core/destroy/destroy
data remove entity @s attack