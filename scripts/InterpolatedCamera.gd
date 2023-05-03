extends Camera

var tween: Tween
var target_position: Vector3 = Vector3.ZERO

func _ready():
	tween = $Tween

func _physics_process(delta: float):
	if get_camera_transform().origin != target_position:
		tween.interpolate_property(get_node("/root/Level/Camera"),
					"position", get_camera_transform().origin, target_position,
					0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		tween.start()

func set_target_position(new_position: Vector3):
	target_position = new_position
