#-------------------------------------------------------------#
#
# DOes the block's interaction
#
#-------------------------------------------------------------#

execute if entity @s[tag=btl.b.doorframe] run function btl:b/doorframe/hit
execute if entity @s[tag=btl.b.fusion_pedestal] run function btl:b/fusion_pedestal/destroy
execute if entity @s[tag=btl.b.fusion_core] run function btl:b/fusion_core/hit