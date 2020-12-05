def struct ModelGeometryCollection
{
    geometries: ModelGeometry[],
    geometryMap: Map<NodeId, ModelGeometry>
}

def struct ModelGeometry
{
    useIndexBuffer: bool,
    layers: GeometryLayer[]
}

[GenerateId]
def type GeometryLayerId;

def struct GeometryLayerInfo
{
    name: string,
    index: int,
    geometryLayerType: GeometryLayerType,
    dataLayerType: DataLayerType,
}

def enum GeometryLayerType
{
    Unknown,
    Position,
    Indices,
    Normal,
    Binormal,
    Tangent,
    UV
}

generate {
    templates: {
        [RootElement]
        def struct GeometryLayer<T>
        {
            id: GeometryLayerId,
            info: GeometryLayerInfo,
            
            [GenerateForParent]
            layer: GeometryDataLayer<T>
        }

        
        def struct GeometryDataLayer<T>
        {
            name: string,
            type: const DataLayerType = T::layerType,
            data: T[]
        }
    }
    
    variants: {
        U32GeometryLayer: {
            T: u32,
            options: { layerType: DataLayerType::UInt }
        }

        Vec2GeometryLayer: { 
            T: vec2::f32,
            options: { layerType: DataLayerType::Vector2 } 
        }
        
        Vec3GeometryLayer: {
            T: vec3::f32,
            options: { layerType: DataLayerType::Vector3 } 
        }

        Vec4GeometryLayer: {
            T: vec4::f32,
            options: { layerType: DataLayerType::Vector4 }
        }
    }
}