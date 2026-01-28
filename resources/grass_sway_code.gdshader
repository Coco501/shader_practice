shader_type canvas_item;

uniform float sway_speed : hint_range(0.0, 15.0, 0.5) = 0.5;
uniform bool enabled = true;

void vertex() {
	if (enabled && VERTEX.y < 0.0) {
		float sway_offset = sin(TIME * sway_speed) * 100.0;
		VERTEX.x = VERTEX.x + sway_offset;
	}
}
