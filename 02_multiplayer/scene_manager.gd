extends Node2D

@export var player_scene: PackedScene
var player_color: Color

# Called when the node enters the scene tree for the first time.
func _ready():
    var index = 1
    for i in GameManager.players:
        var current_player = player_scene.instantiate()
        current_player.name = str(GameManager.players[i].id)
        current_player.color = player_color
        $TileMap.add_child(current_player)
        for spawn in get_tree().get_nodes_in_group("spawns"):
            if spawn.name == "Spawn" + str(index):
                print(current_player)
                current_player.global_position = spawn.global_position
        index += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
    pass


func _on_button_pressed():
    pass # Replace with function body.
