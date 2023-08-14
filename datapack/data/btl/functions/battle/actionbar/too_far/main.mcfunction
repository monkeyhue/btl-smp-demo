scoreboard players add @s btl.w.penalty 1
execute if score @s btl.w.penalty matches 1 run function btl:battle/actionbar/too_far/warn
execute if score @s btl.w.penalty matches 100 run function btl:battle/actionbar/too_far/5
execute if score @s btl.w.penalty matches 120 run function btl:battle/actionbar/too_far/4
execute if score @s btl.w.penalty matches 140 run function btl:battle/actionbar/too_far/3
execute if score @s btl.w.penalty matches 160 run function btl:battle/actionbar/too_far/2
execute if score @s btl.w.penalty matches 180 run function btl:battle/actionbar/too_far/1
execute if score @s btl.w.penalty matches 200.. run function btl:battle/actionbar/too_far/remove