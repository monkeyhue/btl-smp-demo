#--- Chests have feelings too! ---

# Spawning
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:b/chest/state/0

# Idle
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:b/chest/state/1

# Open
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:b/chest/state/2