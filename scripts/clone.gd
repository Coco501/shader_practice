extends Node2D

@export var clone_color: Color = Color.BLUE
@export var material_override: ShaderMaterial

func _ready():
	var mat : ShaderMaterial = $Sprite2D.material
	if mat:
		mat = mat.duplicate()
		mat.set_shader_parameter("color", clone_color)
		$Sprite2D.material = mat
	if material_override:
		material_override = material_override.duplicate()
		$Sprite2D.material = material_override
		
