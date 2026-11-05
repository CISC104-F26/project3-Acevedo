extends RigidBody2D

@export var shrink_percentage = 0.9

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	$MeshInstance2D.scale *= shrink_percentage
	$CollisionShape2D.scale *= shrink_percentage
	pass
