extends Area


const ROTSPEED = 10

signal coinCollected

func _ready():
	pass


func _physics_process(delta):
	rotate_y(deg2rad(ROTSPEED))


func _on_coin_body_entered(body):
	if body.name == "Ball":
		emit_signal("coinCollected")
		$AnimationPlayer.play("bounce")
		$Timer.start()


func _on_Timer_timeout():
	queue_free()
