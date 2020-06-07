extends Node

onready var viewport = get_viewport()
onready var game_size = Vector2(
	ProjectSettings.get_setting('display/window/size/width'),
	ProjectSettings.get_setting('display/window/size/height')
)

func _ready():
	viewport.connect('size_changed', self, 'center_game')
	center_game()

func center_game():
	var game_offset = (viewport.get_visible_rect().size - game_size) / 2 

	viewport.canvas_transform.origin = game_offset
