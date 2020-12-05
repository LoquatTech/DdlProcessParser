def struct ShaderValueMappingConfiguration
{
    inputsMap: InputMapping[],
    texturesMap: TextureMapping[],
    variablesMap: ConstantBufferVariableMapping[],
}

def struct ConstantBufferVariableMapping
{
    mappingMethod: VariableMappingMethod,
    valueProvider: ValueProviderMapping
}

def enum struct VariableMappingMethod
{
    Index {
        bufferSlot: u32,
        variableIndex: u32
    }
    Name {
        bufferName: string,
        variableName: string
    }
}

def enum struct ValueProviderMapping
{
    Material {
        defaultValue: ConstantValue,
        materialValueKey: string
    }
    Method {
        name: string,
        options: MethodOptions
    }
}

def struct TextureMapping
{
    slotMapping: TextureSlotMappingMethod,
    textureMapping:MaterialTextureMappingMethod
}

def enum struct TextureSlotMappingMethod
{
     Index {
         index: u32
     },
     Name {
         name: string
     }
}

def enum struct MaterialTextureMappingMethod
{
    Name {
        name: string,
        defaultTexture: handle Texture,
    }
}

def struct InputMapping
{
    inputSlotMapping: InputSlotMappingMethod,
    bufferMapping: MeshBufferMappingMethod
}

def struct InputSlotMappingMethod
{
    inputType: VertexShaderInputType,
    inputChannelIndex: u32 = 0
}

def enum struct MeshBufferMappingMethod
{
    LayerType {
        layerIndex: u32,
        layerType: GeometryLayerType     
    },
    Name {
        layerIndex: u32,
        layerName: string
    }
}

def enum GeometryLayerType
{
    Position,
    Indices,
    Normal,
    Binormal,
    Tangent,
    UV
}

def enum VertexShaderInputType
{    
    Binormal,
    BlendIndices,
    BlendWeight,
    Color,
    Normal,
    Position,
    TextureCoordinate,
    Tangent,
}