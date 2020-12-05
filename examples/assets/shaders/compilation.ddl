def struct ShaderCompilationConfiguration
{
    shaderType: ShaderCompilationType
}

def enum ShaderCompilationType
{
    AutoDetect = default,
    Vertex,
    Pixel,
}