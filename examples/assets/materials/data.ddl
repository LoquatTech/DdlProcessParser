import common;
import common::ConstantValue;
import surfaceShader::SurfaceShader;

def struct MaterialData
{
    surfaceShader: handle SurfaceShader,
    constants: MaterialConstant[],
    textures: MaterialTexture[],
}

def struct MaterialConstant
{
    name: string,
    value: ConstantValue
}

def struct MaterialTexture
{
    name: string,
    texture: handle Texture,
}