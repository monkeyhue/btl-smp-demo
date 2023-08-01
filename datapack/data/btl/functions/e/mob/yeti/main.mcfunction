#-------------------------------------------------------------#
#
# Yeti state machine
#
#-------------------------------------------------------------#

execute on passengers on passengers unless entity @s[nbt={Health:1024f}] run function btl:e/hitbox/main
execute unless score @s monkeyhue.entity.AIState matches -1.. run function btl:e/mob/yeti/init

#----- AI States -----#

# Die
execute if score @s monkeyhue.entity.AIState matches -1 run function btl:e/mob/yeti/state/die

# Run
execute if score @s monkeyhue.entity.AIState matches 1 run function btl:e/mob/yeti/state/1

# Melee Swing
execute if score @s monkeyhue.entity.AIState matches 2 run function btl:e/mob/yeti/state/2

# Big Slam
execute if score @s monkeyhue.entity.AIState matches 3 run function btl:e/mob/yeti/state/3

# Spinning Punch
execute if score @s monkeyhue.entity.AIState matches 4 run function btl:e/mob/yeti/state/4

# Blizzard Spin
execute if score @s monkeyhue.entity.AIState matches 5 run function btl:e/mob/yeti/state/5

# Jump
execute if score @s monkeyhue.entity.AIState matches 6 run function btl:e/mob/yeti/state/6

# Jump Loop
execute if score @s monkeyhue.entity.AIState matches 7 run function btl:e/mob/yeti/state/7

# Belly Flop Start
execute if score @s monkeyhue.entity.AIState matches 8 run function btl:e/mob/yeti/state/8

# Belly Flop
execute if score @s monkeyhue.entity.AIState matches 9 run function btl:e/mob/yeti/state/9

# Melee Swing 2
execute if score @s monkeyhue.entity.AIState matches 10 run function btl:e/mob/yeti/state/10

# Snow Throw
execute if score @s monkeyhue.entity.AIState matches 11 run function btl:e/mob/yeti/state/11

#----- Other Behavior -----#
execute if score @s monkeyhue.entity.hurtTime matches 10 on passengers run function btl:e/mob/yeti/anim/hurt
execute if score @s monkeyhue.entity.hurtTime matches 1 on passengers run function btl:e/display/unhurt1
execute rotated as @s on passengers run tp @s ^ ^ ^ ~180 ~
function btl:e/mob/main
execute store result bossbar btl:yeti value run scoreboard players get @s monkeyhue.entity.health

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 1 run stopsound @a[distance=..64] music
execute if score @s monkeyhue.time4 matches 2 run playsound btl:music.blue.boss music @a[distance=..64] ~ ~ ~ 1 1 1
execute if score @s monkeyhue.time4 matches 2820.. run scoreboard players reset @s monkeyhue.time4

scoreboard players add @s monkeyhue.time6 1
execute if score @s monkeyhue.time6 matches 100 at @a[distance=..40] run function btl:e/mob/yeti/event/summon_mob
execute if score @s monkeyhue.time6 matches 400 at @a[distance=..40] run function btl:e/mob/yeti/event/summon_mob