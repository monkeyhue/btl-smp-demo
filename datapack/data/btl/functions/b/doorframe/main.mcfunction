#--- Init ---

#--- Fusion Process ---
execute if score @s monkeyhue.time1 matches 0.. run scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 3.. on passengers run kill @s
execute if score @s monkeyhue.time1 matches 3.. run kill @s