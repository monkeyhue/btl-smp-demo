#-------------------------------------------------------------#
#
# Generic block placer for pack
#
#-------------------------------------------------------------#

execute if entity @s[tag=btl.b.doorframe] run function btl:b/doorframe/main
#// Fusion Pedestal has no main
execute if entity @s[tag=btl.b.fusion_core] run function btl:b/fusion_core/main
execute if entity @s[tag=btl.b.blender] run function btl:b/blender/main
execute if entity @s[tag=btl.b.door] run function btl:b/door/main
execute if entity @s[tag=btl.b.chest] run function btl:b/chest/main