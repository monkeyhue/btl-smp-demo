#// Get base rotation
execute unless score @s monkeyhue.entity.AIState matches 0.. run function btl:b/blender/init

#--- I like state machines a lot ---

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:b/blender/state/0

# Blending
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:b/blender/state/1

# Idle (Blended)
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:b/blender/state/2

# Spit
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:b/blender/state/3

