shader_type canvas_item;

const vec4 ref_color = vec4(0.031, 0.463, 0.761, 1);
uniform vec3 new_color : source_color = vec3(0.031, 0.463, 0.761);
uniform bool enabled = true;

void fragment() {
	if (enabled) {
		vec4 subtract = COLOR - ref_color;
		float amount_of_red_green = length(subtract);
		float mask = smoothstep(0.25, 0.45, amount_of_red_green);
		float weight = 1.0 - mask;

		COLOR = mix(COLOR, vec4(new_color, 1), weight);
	}
}
