/*
 *   Vertex Shader
 *
 *   CSCI 441, Computer Graphics, Colorado School of Mines
 */

#version 330 core

// attributes
in vec2 texCoord;
in vec4 vertCoord;
in vec4 vertNormal;
in vec3 cameraPos;

// passed through to fragment shader
out vec4 fragCoord;
out vec4 fragNormal;
out vec2 fragTexCoord;
out vec3 fragCameraPos;
// modelview matrix
uniform mat4 mvMatrix;

void main() {
	
    // some stuff to pass through
	fragCameraPos = cameraPos;
	fragCoord = vertCoord;
	fragNormal = vertNormal;
    fragTexCoord = texCoord;	

	// transformations!
	gl_Position = mvMatrix * vertCoord;	
}