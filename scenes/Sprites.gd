extends TextureRect

const SCALE_NORMAL:Vector2 = Vector2(1.0, 1.0)
const SCALE_DOWN:Vector2 = Vector2(0.1, 0.1)
const SCALE_TIMER:float = 0.6
const SCALE_SPIN: Vector2 = Vector2(1.0, 2.0) 

func _ready():
	run_tween()

func get_rand_image():
	texture = ImageManager.set_rand_image().item_texture


func get_rando_spin_direction():
	return randf_range(SCALE_SPIN.x, SCALE_SPIN.y) 
func get_rando_rotation():
	return deg_to_rad(randf_range(-360,360))


func run_tween() -> void: 
	var tween = get_tree().create_tween()
	tween.set_loops()
	tween.tween_callback(get_rand_image)
	tween.tween_property(self, "scale",SCALE_NORMAL, SCALE_TIMER)
	tween.tween_property(self, "rotation", get_rando_rotation(),get_rando_spin_direction())
	
	tween.tween_property(self, "scale",SCALE_DOWN, SCALE_TIMER)
	tween.tween_property(self, "rotation", get_rando_rotation(),get_rando_spin_direction())
