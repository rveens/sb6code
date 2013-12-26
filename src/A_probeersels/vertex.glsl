#version 430 core

uniform mat4 mv_matrix;
uniform mat4 proj_matrix;

// "Offset" is an output vertex attribute
layout (location = 0) in vec4 position;
layout (location = 1) in vec2 tc;

// interface block
out VS_OUT
{
	vec2 tc;
} vs_out;

void main(void)
{
	gl_Position = proj_matrix * mv_matrix * position;
	vs_out.tc = tc;
}
