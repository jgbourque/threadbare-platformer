extends Area2D

## Adjust this value for desired bounce height
@export var bounce_strength: float = 1100.0


func _on_body_entered(body):
	if body is CharacterBody2D: # Assuming your player is a CharacterBody2D
		# Apply an upward impulse to the player
		body.velocity.y = -bounce_strength
