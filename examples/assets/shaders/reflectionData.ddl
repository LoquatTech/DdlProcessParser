def struct ShaderReflectionData
{
    shaderType: ShaderType,
    constantBuffers: ShaderConstantBuffer[],
    samplers: ShaderSampler[],
    textures: ShaderTexture[],
}

def struct ShaderSampler
{
    name: string,
    slot: u32
}

def struct ShaderTexture
{
    name: string,
    type: TextureType,
    slot: u32
}

def struct ShaderConstantBuffer
{
    name: string,
    size: u32,
    slot: u32,
    constants: ShaderConstant[]
}

def struct ShaderConstant
{
    name: string,
    offset: u32,
    size: u32,
    type: ShaderConstantType
}

def enum ShaderConstantType
{
    Unknown,
    
    Bool,

    Float,
    Float2,
    Float3,
    Float4,

    Int,
    UInt,
    UInt8,
    
    Matrix4X4,
    Matrix3X3,
}

