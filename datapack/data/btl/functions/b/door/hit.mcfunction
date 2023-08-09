#--- Wrap it up ---
execute on attacker if predicate btl:player/iron_axe_pick run data modify storage btl:temp breakBlock set value 1
execute if score @s monkeyhue.entity.AIState matches 0 unless data storage btl:temp breakBlock run function btl:b/door/hit/knock
execute if score @s monkeyhue.entity.AIState matches 0 if data storage btl:temp breakBlock run function btl:b/door/destroy/tree

data remove storage btl:temp breakBlock
data remove entity @s attack