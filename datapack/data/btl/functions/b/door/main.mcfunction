#--- Init ---

#--- Timers ---
execute if score @s monkeyhue.time2 matches 1.. run scoreboard players remove @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 0 run function btl:b/door/hit/reset_knocks

#--- It's battle time ---
execute if score @s monkeyhue.temp2 matches 3.. run function btl:b/door/hit/check_validity

#--- State machine for the door, I guess ---

# Spawning
execute unless score @s monkeyhue.entity.AIState matches 0.. run function btl:b/door/display/spawn_fx

# Closed
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:b/door/state/0

# Opening
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:b/door/state/1

# Open
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:b/door/state/2

# Closing
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:b/door/state/3

# End Battle
execute if score @s monkeyhue.entity.AIState matches 4 run function btl:b/door/state/4

# End Battle Pending (when loot chest is present)
execute if score @s monkeyhue.entity.AIState matches 5 run function btl:b/door/state/5

# Open Fail (when portalstones don't form a valid recipe)
execute if score @s monkeyhue.entity.AIState matches 6 run function btl:b/door/state/6

# Summon Boss
execute if score @s monkeyhue.entity.AIState matches 7 run function btl:b/door/state/7