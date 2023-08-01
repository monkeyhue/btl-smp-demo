#--- If pedestal already has an item ---
execute if entity @s[tag=btl.temp.fp_hasitem] run function btl:b/fusion_pedestal/display/remove

#--- If pedestal has no item ---
execute unless entity @s[tag=!btl.temp.modified,tag=btl.temp.fp_hasitem] run function btl:b/fusion_pedestal/display/add
tag @s remove btl.temp.modified

data remove entity @s interaction