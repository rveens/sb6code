#version 430 core

// output naar de framebuffer
out vec4 color;

// interface block
in VS_OUT
{
	vec2 tc;
} fs_in;

// texture!
uniform sampler2D s;

void main(void)
{
	color = texture(s, gl_FragCoord.xy / textureSize(s, 0));
	/* color = texture(s, fs_in.tc * vec2(3.0, 1.0)); */
}
