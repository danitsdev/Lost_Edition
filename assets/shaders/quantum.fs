#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
    #define MY_HIGHP_OR_MEDIUMP highp
#else
    #define MY_HIGHP_OR_MEDIUMP mediump
#endif

extern MY_HIGHP_OR_MEDIUMP vec2 quantum;
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
    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01;
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

const vec3 DARK_BLUE = vec3(0.078, 0.078, 0.721);
const vec3 LIGHT_BLUE = vec3(0.67, 0.82, 1.0);

float gauss(float x, float s) {
    return exp(-0.5*(x*x)/(s*s));
}

float blurred_lines(vec2 uv, float t) {
    float result = 0.0;
    float sigma = 0.024 + 0.012*sin(t*0.5);
    for (int i = -2; i <= 2; i++) {
        float offset = float(i) * sigma * 2.2;
        float u = uv.x + offset;
        result += 0.20 * gauss(offset, sigma) * smoothstep(0.037,0.012,abs(0.5-fract(u*6.2+sin(t+uv.y*8.0))));
        u = uv.y + offset;
        result += 0.16 * gauss(offset, sigma) * smoothstep(0.045,0.012,abs(0.5-fract(u*7.2-cos(t+uv.x*7.0))));
        u = (uv.x+uv.y)+offset;
        result += 0.12 * gauss(offset, sigma) * smoothstep(0.037,0.012,abs(0.5-fract(u*6.9+sin(t+uv.y*10.0))));
    }
    return result;
}

vec3 bluefoil(vec2 uv, float t, float intensity)
{
    float foil_wave = 0.32*sin((uv.x+uv.y*1.3)*24.0 + t*1.6) + 0.13*sin(uv.y*37.0-t*1.09);
    float foil_wave2 = 0.11*sin((uv.x-uv.y*1.1)*38.0 - t*1.8);
    float vign = smoothstep(0.22,0.92,length(uv-0.5));
    vec3 blue_grad = mix(LIGHT_BLUE, DARK_BLUE, vign);
    float foil_shift = 0.11*foil_wave + 0.06*foil_wave2 + 0.09*intensity;
    blue_grad = mix(blue_grad, vec3(0.20,0.38,1.0), foil_shift);
    float shimmer = smoothstep(0.7,1.0,blue_grad.b) * sin(t*2.1+uv.x*14.0+uv.y*19.0)*0.03;
    return blue_grad+shimmer;
}

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    vec4 tex = Texel(texture, texture_coords);
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;
    float t = time + quantum.x * 1.25 + quantum.y * 1.2;

    // Convert a local-card displacement to atlas UVs. This keeps the ghost
    // equally visible on every atlas instead of depending on texture size.
    vec2 card_to_atlas = texture_details.ba / image_details;
    float band = floor(uv.y * 18.0);
    float glitch = step(0.82, 0.5 + 0.5 * sin(band * 5.17 + t * 3.1));
    float drift = 0.020 + 0.012 * (0.5 + 0.5 * sin(t * 1.45));
    drift += glitch * 0.018 * sin(band * 2.31 + t * 4.0);
    vec2 ghost_offset = vec2(drift, 0.004 * sin(t * 1.15 + band)) * card_to_atlas;

    vec4 ghost_a = Texel(texture, texture_coords - ghost_offset);
    vec4 ghost_b = Texel(texture, texture_coords + ghost_offset * vec2(0.62, -0.35));
    float valid_a = step(drift, uv.x) * step(0.0, uv.y) * step(uv.y, 1.0);
    float valid_b = step(uv.x, 1.0 - drift * 0.62) * step(0.0, uv.y) * step(uv.y, 1.0);

    float sweep = 0.5 + 0.5 * sin((uv.x + uv.y * 0.72) * 16.0 - t * 1.55);
    float shine = smoothstep(0.78, 0.98, sweep);
    float brightness = dot(tex.rgb, vec3(0.299, 0.587, 0.114));
    float low = min(tex.r, min(tex.g, tex.b));
    float high = max(tex.r, max(tex.g, tex.b));
    float colour_mask = smoothstep(0.035, 0.30, high - low);
    float neutral_mask = 1.0 - colour_mask;

    // Cyan and violet copies suggest two simultaneous states. Their alpha is
    // intentionally translucent so the original card remains the focal image.
    vec3 cyan_state = ghost_a.rgb * vec3(0.55, 0.98, 1.25);
    vec3 violet_state = ghost_b.rgb * vec3(1.02, 0.55, 1.24);
    float echo_a = valid_a * ghost_a.a * (0.16 + 0.21 * colour_mask + 0.055 * neutral_mask + 0.08 * glitch);
    float echo_b = valid_b * ghost_b.a * (0.11 + 0.15 * colour_mask + 0.040 * neutral_mask);
    vec3 final = mix(tex.rgb, cyan_state, echo_a);
    final = mix(final, violet_state, echo_b);

    vec3 quantum_tint = mix(vec3(0.10, 0.58, 1.0), vec3(0.62, 0.22, 1.0), sweep);
    final += quantum_tint * shine * colour_mask * (0.09 + 0.065 * brightness);
    final += quantum_tint * glitch * colour_mask * 0.032;

    return dissolve_mask(vec4(final,tex.a)*colour, texture_coords, uv);
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
