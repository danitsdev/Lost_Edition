#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define MY_HIGHP_OR_MEDIUMP highp
#else
	#define MY_HIGHP_OR_MEDIUMP mediump
#endif

float rand(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

extern MY_HIGHP_OR_MEDIUMP vec2 plasma;
extern MY_HIGHP_OR_MEDIUMP number dissolve;
extern MY_HIGHP_OR_MEDIUMP number time;
extern MY_HIGHP_OR_MEDIUMP vec4 texture_details;
extern MY_HIGHP_OR_MEDIUMP vec2 image_details;
extern bool shadow;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_1;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_2;

vec4 dissolve_mask(vec4 tex, vec2 texture_coords, vec2 uv)
{
    if (dissolve < 0.001) {
        return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, shadow ? tex.a*0.3: tex.a);
    }

    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01; //Adjusting 0.0-1.0 to fall to -0.1 - 1.1 scale so the mask does not pause at extreme values

	float t = time * 10.0 + 2003.;
	vec2 floored_uv = (floor((uv*texture_details.ba)))/max(texture_details.b, texture_details.a);
    vec2 uv_scaled_centered = (floored_uv - 0.5) * 2.3 * max(texture_details.b, texture_details.a);
	
	vec2 field_part1 = uv_scaled_centered + 50.*vec2(sin(-t / 143.6340), cos(-t / 99.4324));
	vec2 field_part2 = uv_scaled_centered + 50.*vec2(cos( t / 53.1532),  cos( t / 61.4532));
	vec2 field_part3 = uv_scaled_centered + 50.*vec2(sin(-t / 87.53218), sin(-t / 49.0000));

    float field = (1.+ (
        cos(length(field_part1) / 19.483) + sin(length(field_part2) / 33.155) * cos(field_part2.y / 15.73) +
        cos(length(field_part3) / 27.193) * sin(field_part3.x / 21.92) ))/2.;
    vec2 borders = vec2(0.2, 0.8);

    float res = (.5 + .5* cos( (adjusted_dissolve) / 82.612 + ( field + -.5 ) *3.14))
    - (floored_uv.x > borders.y ? (floored_uv.x - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y > borders.y ? (floored_uv.y - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.x < borders.x ? (borders.x - floored_uv.x)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y < borders.x ? (borders.x - floored_uv.y)*(5. + 5.*dissolve) : 0.)*(dissolve);

    if (tex.a > 0.01 && burn_colour_1.a > 0.01 && !shadow && res < adjusted_dissolve + 0.8*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
        if (!shadow && res < adjusted_dissolve + 0.5*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
            tex.rgba = burn_colour_1.rgba;
        } else if (burn_colour_2.a > 0.01) {
            tex.rgba = burn_colour_2.rgba;
        }
    }

    return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, res > adjusted_dissolve ? (shadow ? tex.a*0.3: tex.a) : .0);
}

number hue(number s, number t, number h)
{
	number hs = mod(h, 1.)*6.;
	if (hs < 1.) return (t-s) * hs + s;
	if (hs < 3.) return t;
	if (hs < 4.) return (t-s) * (4.-hs) + s;
	return s;
}

vec4 RGB(vec4 c)
{
	if (c.y < 0.0001)
		return vec4(vec3(c.z), c.a);

	number t = (c.z < .5) ? c.y*c.z + c.z : -c.y*c.z + (c.y+c.z);
	number s = 2.0 * c.z - t;
	return vec4(hue(s,t,c.x + 1./3.), hue(s,t,c.x), hue(s,t,c.x - 1./3.), c.w);
}

vec4 HSL(vec4 c)
{
	number low = min(c.r, min(c.g, c.b));
	number high = max(c.r, max(c.g, c.b));
	number delta = high - low;
	number sum = high+low;

	vec4 hsl = vec4(.0, .0, .5 * sum, c.a);
	if (delta == .0)
		return hsl;

	hsl.y = (hsl.z < .5) ? delta / sum : delta / (2.0 - sum);

	if (high == c.r)
		hsl.x = (c.g - c.b) / delta;
	else if (high == c.g)
		hsl.x = (c.b - c.r) / delta + 2.0;
	else
		hsl.x = (c.r - c.g) / delta + 4.0;

	hsl.x = mod(hsl.x / 6., 1.);
	return hsl;
}

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;

    float t = time + plasma.x * 1.35 + plasma.y * 1.1;
    vec4 tex = Texel(texture, texture_coords);

    float wave_a = sin(uv.x * 8.0 + uv.y * 5.0 - t * 1.10);
    float wave_b = sin(uv.y * 13.0 - uv.x * 3.0 + t * 0.92);
    float field = 0.5 + 0.27 * wave_a + 0.23 * wave_b;
    float ribbon = smoothstep(0.72, 0.96, field);

    // Brief block faults make the energy feel synthetic and unstable without
    // displacing the illustration like Quantum's two-state echo.
    vec2 fault_cell = floor(uv * vec2(15.0, 23.0));
    float fault_clock = floor(t * 5.0);
    float fault_noise = rand(fault_cell + vec2(fault_clock, fault_clock * 0.37));
    float fault = step(0.925, fault_noise);
    float fault_scan = fault * smoothstep(0.18, 0.48, fract(uv.y * 23.0 + t * 0.8));

    // Vanilla-style recolouring: retain the source lightness and detail, but
    // compress every original hue into a recognisable family of rose tones.
    vec4 source_hsl = HSL(tex);
    float chroma = max(tex.r, max(tex.g, tex.b)) - min(tex.r, min(tex.g, tex.b));
    float colour_mask = smoothstep(0.025, 0.25, chroma);
    float white_amount = smoothstep(0.72, 0.96, min(tex.r, min(tex.g, tex.b)));
    float white_mask = 1.0 - white_amount;
    float art_mask = max(colour_mask, (1.0 - source_hsl.z) * 0.32) * white_mask;
    art_mask = clamp(art_mask + white_amount * 0.25, 0.0, 1.0);

    // Keep the entire cycle inside violet-magenta. HSL wraps near 1.0 into
    // red, so this deliberately capped range prevents Balatro's reds leaking.
    float rose_hue = 0.840 + 0.055 * sin(source_hsl.x * 6.28318 + field * 1.35);
    float rose_sat = clamp(0.62 + source_hsl.y * 0.34 + ribbon * 0.07, 0.0, 0.98);
    float rose_light = clamp(source_hsl.z + (field - 0.5) * 0.070, 0.04, 0.98);
    vec3 rose_image = RGB(vec4(rose_hue, rose_sat, rose_light, tex.a)).rgb;

    vec3 plasma_violet = vec3(0.48, 0.16, 1.00);
    vec3 plasma_pink = vec3(0.94, 0.28, 1.00);
    vec3 plasma_glow = mix(plasma_violet, plasma_pink, smoothstep(0.22, 0.82, field));
    vec3 final = mix(tex.rgb, rose_image, 0.96 * art_mask);
    final += plasma_glow * ribbon * art_mask * 0.22;
    final += mix(plasma_pink, plasma_violet, fault_noise) * fault_scan * art_mask * 0.19;
    final += plasma_pink * ribbon * white_amount * 0.035;

    return dissolve_mask(vec4(final, tex.a)*colour, texture_coords, uv);
}

extern MY_HIGHP_OR_MEDIUMP vec2 mouse_screen_pos;
extern MY_HIGHP_OR_MEDIUMP float hovering;
extern MY_HIGHP_OR_MEDIUMP float screen_scale;

#ifdef VERTEX
vec4 position( mat4 transform_projection, vec4 vertex_position )
{
    if (hovering <= 0.){
        return transform_projection * vertex_position;
    }
    float mid_dist = length(vertex_position.xy - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy);
    vec2 mouse_offset = (vertex_position.xy - mouse_screen_pos.xy)/screen_scale;
    float scale = 0.2*(-0.03 - 0.3*max(0., 0.3-mid_dist))
                *hovering*(length(mouse_offset)*length(mouse_offset))/(2. -mid_dist);

    return transform_projection * vertex_position + vec4(0,0,0,scale);
}
#endif
