#-------------------------------------------------------------#
#
# Snowfiend state machine
#
#-------------------------------------------------------------#

execute on passengers on passengers unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/snowfiend/init

#----- AI States -----#

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/snowfiend/state/0

# Walk
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/snowfiend/state/1

# Attack
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/snowfiend/state/2

# Spin
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/snowfiend/state/3

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 on passengers run function btl:e/mob/snowfiend/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 1 on passengers run function btl:e/display/unhurt1
execute rotated as @s on passengers run tp @s ^ ^ ^ ~180 ~
function btl:e/mob/main
particle snowflake ~ ~0.9 ~ 0.4 0.8 0.4 0 1

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/snowfiend/state/die
execute if score @s monkeyhue.time1 matches 1800.. run function btl:e/mob/despawn