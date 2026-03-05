#version 450

layout(location = 0) in vec3 inPos;

inline float foo(float x) {
    return x + 1.0;
}

noinline float bar(float x) {
    return x + 2.0;
}


void main() {
    float a = foo(inPos.x);
    float b = bar(inPos.y);
    gl_Position = vec4(a, b, 0.0, 1.0);
}