#--- If player right clicks with a fusion catalyst ---
execute if entity @p[tag=btl.t.activate_core] if score @s monkeyhue.time1 matches 1.. run function btl:b/fusion_core/actionbar/wait
execute if entity @p[tag=btl.t.activate_core] unless score @s monkeyhue.time2 matches 1.. run function btl:b/fusion_core/fusion/start

tag @a[distance=..32] remove btl.t.activate_core
data remove entity @s interaction