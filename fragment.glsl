#version 120

varying vec2 UV;
uniform sampler2D tex;

void main()
{
  if (UV.y > 0.75 && UV.y < 0.8) {
    discard;
  }
  gl_FragColor = texture2D(tex, UV).rgba;
}
