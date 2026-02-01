extends Node2D

@export var material_override: ShaderMaterial
@export_range(0.0, 15.0, 0.5) var sway_speed: float

func _ready():
	if material_override:
		material_override = material_override.duplicate()
		$Sprite2D.material = material_override
	if sway_speed:
		var mat = $Sprite2D.material.duplicate()
		$Sprite2D.material = mat
		mat.set_shader_parameter("sway_speed", sway_speed)
