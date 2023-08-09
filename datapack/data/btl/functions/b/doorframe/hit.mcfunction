#--- Wrap it up ---
execute on attacker if predicate btl:player/iron_axe_pick run data modify storage btl:temp breakBlock set value 1
execute unless data storage btl:temp breakBlock run function btl:b/fusion_core/destroy/fail
execute if data storage btl:temp breakBlock run function btl:b/doorframe/destroy/tree

data remove storage btl:temp breakBlock
data remove entity @s attack