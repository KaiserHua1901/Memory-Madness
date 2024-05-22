extends TextureRect

const SCALE_NORMAL:Vector2 = Vector2(0.1, 0.1)
const SCALE_DOWN:Vector2 = Vector2(1.0, 1.0)
const SCALE_TIMER:float = 0.5

func _ready():
	run_tween()

func run_tween() -> void: 
	var tween = get_tree().create_tween()
	tween.set_loops()
	tween.tween_property(self, "scale",SCALE_NORMAL, SCALE_TIMER)
	tween.tween_property(self, "scale",SCALE_DOWN, SCALE_TIMER)