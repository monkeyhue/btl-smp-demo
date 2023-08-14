#-------------------------------------------------------------#
#
# DOes the block's interaction
#
#-------------------------------------------------------------#

execute if entity @s[tag=btl.b.doorframe] run function btl:b/doorframe/interact
execute if entity @s[tag=btl.b.fusion_pedestal] run function btl:b/fusion_pedestal/interact
execute if entity @s[tag=btl.b.fusion_core] run function btl:b/fusion_core/interact
execute if entity @s[tag=btl.b.door] run function btl:b/door/interact
execute if entity @s[tag=btl.b.blender] run function btl:b/blender/interact