#version 120
attribute vec3 point;
attribute vec2 texcoord;
varying vec2 UV;
void main()
{
  gl_Position = vec4(point, 1);
  UV = texcoord;
}
