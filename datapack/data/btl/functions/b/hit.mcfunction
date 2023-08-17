#-------------------------------------------------------------#
#
# DOes the block's interaction
#
#-------------------------------------------------------------#

execute if entity @s[tag=btl.b.doorframe] run function btl:b/doorframe/hit
execute if entity @s[tag=btl.b.fusion_pedestal] run function btl:b/fusion_pedestal/destroy
execute if entity @s[tag=btl.b.fusion_core] run function btl:b/fusion_core/hit
execute if entity @s[tag=btl.b.door] run function btl:b/door/hit
execute if entity @s[tag=btl.b.blender] run function btl:b/blender/hit
execute if entity @s[tag=btl.b.chest] if score @s monkeyhue.entity.AIState matches 1 run function btl:b/chest/open