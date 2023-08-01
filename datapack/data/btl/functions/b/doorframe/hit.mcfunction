#--- Variables ---

#--- Wrap it up ---
execute unless entity @p[distance=..10,tag=btl.t.break_doorframe] run function btl:b/doorframe/destroy_fail
execute if entity @p[distance=..10,tag=btl.t.break_doorframe] run function btl:b/doorframe/destroy_tree
data remove entity @s attack