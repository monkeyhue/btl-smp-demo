#-------------------------------------------------------------#
#
# Spook state machine
#
#-------------------------------------------------------------#

function btl:e/mob/main
execute on passengers unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/spook/init

#----- AI States -----#

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/spook/state/die

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function btl:e/mob/spook/state/0

# Chase Player
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/spook/state/1

# Disappear
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/spook/state/2

# Attack
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/spook/state/3

# Hurt
execute if score @s monkeyhue.entity.AIState matches 4 run function btl:e/mob/spook/state/4

# Appear
execute if score @s monkeyhue.entity.AIState matches 5 run function btl:e/mob/spook/state/5

#----- Other Behavior -----#
scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 51.. run scoreboard players reset @s monkeyhue.time3
execute if score @s monkeyhue.entity.hurtTime matches 10 run function btl:e/mob/spook/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 0 run function btl:e/display/unhurt0