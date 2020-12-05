import ::assets::common::constants::ConstantValue;

def struct ImportedModelData
{
    nodes: ImportedNode[],
    geometry: ImportedGeometryData[],
    materials: ImportedMaterialData[],
    textures: ImportedTextureEntry[],
}

def struct ImportedNode
{
    name: string,
    transform: ImportedNodeTransform,
    payload: ImportedNodePayload,
    type: ImportedNodeType,
    parent: handle ImportedNode,
    children: handle ImportedNode[],
}

def enum struct ImportedNodePayload
{
    Unknown,
    Geometry {
        material: ref ImportedMaterialData,
        geometry: ref ImportedGeometryData,
    }
    Light,
    Camera,
    Empty,
}

def struct ImportedNodeTransform
{
    position: vec3::f32,
    rotation: quaternion,
    scale: vec3::f32
}

def struct ImportedGeometryData
{
    useIndexBuffer: bool,
    indicesLayer: GeometryDataLayer<u32>[],
    positionLayer: GeometryDataLayer<vec3::f32>[],
    normalLayers: GeometryDataLayer<vec3::f32>[],
    binormalLayers: GeometryDataLayer<vec3::f32>[],
    tangentLayers: GeometryDataLayer<vec3::f32>[],
    uvLayers: GeometryDataLayer<vec2::f32>[],
}

def struct ImportedTextureEntry
{
    name: string,
    path: string,
}

def struct ImportedMaterialData
{
    name: string,
    textures: ImportedMaterialDataTexture[],
    constants: ImportedMaterialDataConstant[],
}

def struct ImportedMaterialDataTexture
{
    key: string,
    textureName: string
}

def struct ImportedMaterialDataConstant
{
    name: string,
    value: ConstantValue
}

