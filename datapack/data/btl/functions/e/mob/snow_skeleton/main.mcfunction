#-------------------------------------------------------------#
#
# Frozen Skeleton state machine
# Relation Type: Vindicator-based
#
#-------------------------------------------------------------#

execute unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/snow_skeleton/init

#----- AI States -----#

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/snow_skeleton/state/die

# Run
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/snow_skeleton/state/0

# Attack
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/snow_skeleton/state/1

# Attack2
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/snow_skeleton/state/2

# Throw Head
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/snow_skeleton/state/3

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 run function btl:e/mob/snow_skeleton/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 0 run function btl:e/display/unhurt_vehicle
function btl:e/mob/main