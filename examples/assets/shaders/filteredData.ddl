import ::assets::{ texture::{Texture, TextureType} };

def struct ShaderFilteredData
{
    texturesMap: MatchedTextureMapping[],
    variablesMap: MatchedConstantBufferMapping[]
}

def struct MatchedConstantBufferMapping
{
    isEmpty: bool,
    size: int,
    slot: int,
    matchedConstants: MatchedConstantMapping[],
}

def struct MatchedConstantMapping
{
    constant: ShaderConstant,
    valueProvider: ValueProviderMapping
}

def struct MatchedTextureMapping
{
    shaderTexture: ShaderTexture,
    textureMappingMethod: MaterialTextureMappingMethod
}

def struct ShaderTexture
{
    name: string,
    type: TextureType,
    slot: u32,
}

def enum struct MaterialTextureMappingMethod
{
    Name {
        name: string,
        defaultTexture: handle Texture
    }
}