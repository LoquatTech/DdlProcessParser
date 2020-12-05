def enum struct ConstantValue
{
  Unit,
  Bool {
    value: bool
  },
  Int {
    value: u32
  },
  Float {
    value: f32
  },
  Vector2 {
    value: vec2::f32
  },
  Vector3 {
    value: vec3::f32
  },
  Vector4 {
    value: vec4::f32
  }
}
