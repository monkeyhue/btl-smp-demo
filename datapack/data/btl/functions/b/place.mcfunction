#-------------------------------------------------------------#
#
# Generic block placer for pack
#
#-------------------------------------------------------------#

execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_1"}}}}]} run function btl:b/doorframe/stone/place/1
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_2"}}}}]} run function btl:b/doorframe/stone/place/2
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:stone_doorframe_3"}}}}]} run function btl:b/doorframe/stone/place/3
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:fusion_pedestal"}}}}]} run function btl:b/fusion_pedestal/place
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"btl:fusion_core"}}}}]} run function btl:b/fusion_core/place