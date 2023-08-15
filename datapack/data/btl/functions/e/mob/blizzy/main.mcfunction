#-------------------------------------------------------------#
#
# Blizzy state machine
#
#-------------------------------------------------------------#

execute on passengers on passengers unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/blizzy/init

#----- AI States -----#

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/blizzy/state/0

# Charge In
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/blizzy/state/1

# Charge
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/blizzy/state/2

# Charge Out
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/blizzy/state/3

# Spit Snowflakes
execute if score @s monkeyhue.entity.AIState matches 4 run function btl:e/mob/blizzy/state/4

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 on passengers run function btl:e/mob/blizzy/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 1 on passengers run function btl:e/display/unhurt1
execute rotated as @s on passengers run tp @s ^ ^ ^ ~180 ~
function btl:e/mob/main
particle snowflake ~ ~1.3 ~ 0.6 0.6 0.6 0 1

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/blizzy/state/die
execute if score @s monkeyhue.time1 matches 1800.. run function btl:e/mob/despawn