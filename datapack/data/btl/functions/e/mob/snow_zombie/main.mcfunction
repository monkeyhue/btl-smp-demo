#-------------------------------------------------------------#
#
# Frozen Zombie state machine
# Relation Type: Riding Hitbox
#
#-------------------------------------------------------------#

execute on vehicle unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/snow_zombie/init

#----- AI States -----#

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/snow_zombie/state/die

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
execute if score @s monkeyhue.entity.hurtTime matches 0 run function btl:e/display/unhurt0
execute on vehicle rotated as @s on passengers run tp @s ^ ^ ^ ~180 0
#execute facing entity @p[gamemode=!creative,gamemode=!survival] feet run tp @s ^ ^ ^ ~180 0
function btl:e/mob/main