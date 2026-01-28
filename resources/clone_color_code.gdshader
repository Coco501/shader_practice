shader_type canvas_item;

const vec4 ref_color = vec4(0.031, 0.463, 0.761, 1);
uniform vec4 new_color : source_color = vec4(0.031, 0.463, 0.761, 1);
uniform bool enabled = true;

void fragment() {
	if (enabled) {
		vec4 subtract = COLOR - ref_color;
		float len = length(subtract);
		float stepped_len = smoothstep(0.25, 0.45, len);
		float weight = 1.0 - stepped_len;

		COLOR = mix(COLOR, new_color, weight);
	}
}
