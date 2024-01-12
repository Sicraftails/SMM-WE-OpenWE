precision mediump float;
#define LOWPREC lowp
// Uniforms look like they're shared between vertex and fragment shaders in GLSL, so we have to be careful to avoid name clashes
#define _YY_GLSLES_ 1
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    gl_FragColor.rgb = v_vColour.rgb;
}

