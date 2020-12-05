def struct ModelNode
{
    name: string,
    id: NodeId,
    type: NodeType,
    transform: NodeTransform,
    payload: ModelNodePayload,
    parent: ref Node,
    children: ref Node[],
}

def enum struct ModelNodePayload
{
    Geometry {
        material: ref Material,
        geometry: ref ModelGeometry,
    }
    Light,
    Camera,
    Empty,
}

def struct NodeTransform
{
    position: vec3::f32,
    rotation: quaternion,
    scale: vec3::f32
}

def enum NodeType
{
    Geometry,
    Light,
    Camera,
    Empty,
}