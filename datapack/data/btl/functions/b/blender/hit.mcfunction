#--- Variables ---

#--- Wrap it up ---
execute unless score @s monkeyhue.entity.AIState matches 3 run function btl:b/blender/destroy/destroy
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:b/blender/destroy/fail

data remove entity @s attack