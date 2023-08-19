#-------------------------------------------------------------#
#
# Frozen Zombie state machine
# Relation Type: Vindicator-based
#
#-------------------------------------------------------------#

execute unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/snow_zombie/init

#----- AI States -----#
# Walk
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/snow_zombie/state/0

# Attack
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/snow_zombie/state/1

# Falling
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/snow_zombie/state/2

# Land
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/snow_zombie/state/3

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 run function btl:e/mob/snow_zombie/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 0 run function btl:e/display/unhurt_vehicle
function btl:e/mob/main

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/snow_zombie/state/die
execute if score @s btl.w.battleID matches 1.. if score @s monkeyhue.time1 matches 1200.. run function btl:e/mob/despawn
execute if score @s btl.w.battleID matches -1 if score @s monkeyhue.time1 matches 3000.. run function btl:e/mob/despawn