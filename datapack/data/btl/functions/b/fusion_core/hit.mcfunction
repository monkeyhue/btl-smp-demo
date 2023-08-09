#--- Variables ---

#--- Wrap it up ---
execute on attacker if predicate btl:player/iron_axe_pick run data modify storage btl:temp breakBlock set value 1
execute unless score @s monkeyhue.time1 matches 0.. unless data storage btl:temp breakBlock run function btl:b/fusion_core/destroy/fail
execute if score @s monkeyhue.time1 matches 0.. run function btl:b/fusion_core/destroy/fail
execute unless score @s monkeyhue.time1 matches 0.. if data storage btl:temp breakBlock run function btl:b/fusion_core/destroy/destroy

data remove storage btl:temp breakBlock
data remove entity @s attack