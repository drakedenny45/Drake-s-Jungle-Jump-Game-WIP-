extends Node

# Total number of levels in your game (update as needed)
var num_levels: int = 3

# The level the player is currently on
var current_level: int = 1

# Scene paths
const GAME_SCENE: String = "res://main.tscn"
const TITLE_SCREEN: String = "res://ui/title.tscn"


# Restart the game and go back to title
func restart():
    current_level = 1
    get_tree().change_scene_to_file(TITLE_SCREEN)


# Go to the next level or restart if finished
func next_level() -> bool:
    current_level += 1

    if current_level <= num_levels:
        get_tree().change_scene_to_file(GAME_SCENE)
        return true
    else:
        restart()
        return false
