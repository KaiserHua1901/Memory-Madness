extends Node

var item_images:Array = []

func _ready():
	load_items_image() 
	print(item_images)

func add_files_to_list(file_name:String, path:String):
	var full_path = path + "/" + file_name
	var dict = {
		"item": file_name.rstrip(".png"),
		"item_texture": load(full_path)
	}
	item_images.append(dict)



	
func load_items_image():
	var path = "res://assets/glitch"
	var dir = DirAccess.open(path)
	var image_files = dir.get_files()
	# var image_name = dir.list_dir_begin()

	for file_name in image_files:
		if not file_name.ends_with(".import"):
			add_files_to_list(file_name, path)

func set_rand_image()-> Dictionary:
	return item_images.pick_random()
  


