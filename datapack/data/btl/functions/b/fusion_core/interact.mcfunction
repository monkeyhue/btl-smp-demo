#--- If player right clicks with a fusion catalyst ---
execute if entity @p[tag=btl.t.activate_core] unless entity @e[type=interaction,tag=btl.b.fusion_core,limit=1,distance=..24,scores={monkeyhue.time1=0..}] run function btl:b/fusion_core/fusion/start
execute if entity @p[tag=btl.t.activate_core] if entity @e[type=interaction,tag=btl.b.fusion_core,limit=1,distance=..24,scores={monkeyhue.time1=0..}] run function btl:b/fusion_core/actionbar/wait
execute if entity @p[tag=btl.t.activate_core] if score @s monkeyhue.time1 matches 0.. run tag @p[tag=btl.t.activate_core] remove btl.t.activate_core

data remove entity @s interaction