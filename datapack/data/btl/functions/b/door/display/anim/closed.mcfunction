scoreboard players set #btl.animLength monkeyhue.objmc1 40
data modify entity @s item.tag.Damage set value 5
function btl:e/display/anim/gen_block
execute on passengers run function btl:b/door/display/anim/closed