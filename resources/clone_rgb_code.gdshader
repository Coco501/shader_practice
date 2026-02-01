shader_type canvas_item;

const vec4 ref_color = vec4(0.031, 0.463, 0.761, 1);
uniform bool enabled = true;

void fragment() {
	if (enabled) {
		vec4 subtract = COLOR - ref_color;
		float amount_of_red_green = length(subtract);
		float mask = smoothstep(0.25, 0.45, amount_of_red_green);
		float weight = 1.0 - mask;

		vec3 rgb = vec3(
	    sin(TIME + 0.0) * 0.5 + 0.5,
	    sin(TIME + 2.094) * 0.5 + 0.5, // 120°
	    sin(TIME + 4.188) * 0.5 + 0.5  // 240°
		);

		COLOR = mix(COLOR, vec4(rgb, 1), weight);
	}
}
