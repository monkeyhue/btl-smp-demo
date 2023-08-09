#-------------------------------------------------------------#
#
# Generic block placer for pack
#
#-------------------------------------------------------------#

execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_1"}}}}]} run function btl:b/doorframe/place/stone/1
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_2"}}}}]} run function btl:b/doorframe/place/stone/2
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_3"}}}}]} run function btl:b/doorframe/place/stone/3
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:fusion_pedestal"}}}}]} run function btl:b/fusion_pedestal/place
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:fusion_core"}}}}]} run function btl:b/fusion_core/place