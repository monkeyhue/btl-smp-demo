scoreboard players set #btl.animLength monkeyhue.objmc1 30
data modify entity @s item.tag.Damage set value 4
function btl:e/display/anim/gen_block
execute on passengers run function btl:b/door/display/anim/close