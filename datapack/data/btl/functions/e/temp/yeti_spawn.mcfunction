#// This function will be deleted when I finish up the Dimensional Door and add it to the demo
spreadplayers ~ ~ 16 24 false @s
function btl:technical/rng/8
execute if score @s monkeyhue.rng.out matches 0..1 run function btl:admin/summon/snow_zombie
execute if score @s monkeyhue.rng.out matches 1..4 run function btl:admin/summon/snow_skeleton
execute if score @s monkeyhue.rng.out matches 4.. run function btl:admin/summon/chillager
particle explosion