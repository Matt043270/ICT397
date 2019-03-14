#version 400 core

in vec3 position;
in vec2 textureCoords;
in vec3 normal;
in vec2 detailTexCoords;

out vec2 pass_textureCoords;
out float pass_height;
out vec2 pass_detailTexCoords;

uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;

void main(void)
{
	vec4 worldPosition = transformationMatrix * vec4(position, 1.0);
	gl_Position = projectionMatrix * viewMatrix * worldPosition;
	pass_textureCoords = textureCoords;
	pass_height = position.y;
	pass_detailTexCoords = detailTexCoords;
	
}