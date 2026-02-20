extends Node2D
@onready var tile_mapobjects: TileMapLayer = $TileMapobjects

func door_poff():
	tile_mapobjects.erase_cell(Vector2i(2,4))
	tile_mapobjects.erase_cell(Vector2i(3,4))
	tile_mapobjects.erase_cell(Vector2i(2,5))
	tile_mapobjects.erase_cell(Vector2i(3,5))
