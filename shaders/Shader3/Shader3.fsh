varying vec2 v_vTexcoord;
uniform sampler2D u_baseTexture;

void main()
{
    vec2 uv = v_vTexcoord;
    vec4 color = vec4(0.0);

    // Apply horizontal blur
    color += texture2D(u_baseTexture, uv - vec2(0.01, 0.0));
    color += texture2D(u_baseTexture, uv);
    color += texture2D(u_baseTexture, uv + vec2(0.01, 0.0));

    // Apply vertical blur
    color += texture2D(u_baseTexture, uv - vec2(0.0, 0.01));
    color += texture2D(u_baseTexture, uv);
    color += texture2D(u_baseTexture, uv + vec2(0.0, 0.01));

    // Average the blurred pixels
    color /= 6.0;

    // Output the final color
    gl_FragColor = color;
}