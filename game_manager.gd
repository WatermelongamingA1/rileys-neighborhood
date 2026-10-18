extends Node

# TODO: Move everything here to "GameScene" instance for modularity
# and refactor all references to GameManager to it
# A GameManager should manage any GameScenes as children

var player: CharacterBody2D
var camera: Camera2D
var buddy: Node

func _ready() -> void:
	var room = get_node_or_null("/root/Room")
	if not room: return
	player = room.get_node("Player")
	camera = room.get_node("Camera2D")
	buddy = room.get_node("CameraHelper")

func set_zoom(zoom: Vector2) -> void:
	if not camera or not buddy: return
	buddy.zoom = zoom

#var hud: Control
#
#func set_hud(hud_node):
	#hud = hud_node
