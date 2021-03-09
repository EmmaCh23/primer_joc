extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := Vector2(0, 0)
var acceleracio : Vector2 = Vector2(3, 5)
var velocitat_max = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(40, 40)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat = Vector2.ZERO
	velocitat.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocitat.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
#	if Input.is_action_pressed("ui_right"):
#		velocitat += Vector2.RIGHT
#	if Input.is_action_pressed("ui_left"):
#		velocitat += Vector2.LEFT
#	if Input.is_action_pressed("ui_up"):
#		velocitat += Vector2.UP
#	if Input.is_action_pressed("ui_down"):
#		velocitat += Vector2.DOWN
	if Input.is_action_pressed("rota"):
		rotation_degrees += 30
	velocitat = velocitat.normalized() * velocitat_max
	position += velocitat * delta
	
