#-------------------------------------------------------------#
#
# Chillager state machine
# Relation Type: Vindicator-based
#
#-------------------------------------------------------------#

execute unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/chillager/init

#----- AI States -----#
# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/chillager/state/0

# Run
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/chillager/state/1

# Attack
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/chillager/state/2

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 run function btl:e/mob/chillager/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 0 run function btl:e/display/unhurt_vehicle
function btl:e/mob/main

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/chillager/state/die
execute if score @s btl.w.battleID matches 1.. if score @s monkeyhue.time1 matches 1200.. run function btl:e/mob/despawn
execute if score @s btl.w.battleID matches -1 if score @s monkeyhue.time1 matches 3000.. run function btl:e/mob/despawn