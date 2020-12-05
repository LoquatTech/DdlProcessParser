def struct TextureData
{
    pixelData: TexturePixelData,
    info: TextureDataInfo
}

def struct TextureDataInfo
{
    width: int,
    height: int,
    format: TextureFormat,
    isSRgb: bool,
}

def enum TextureFormat
{
    Unknown,

    Rgb8UNorm,

    Rgba8UNorm,
    Rgba16UNorm,

    R8UNorm,
    R16UNorm,
    A8UNorm,

    Rgba32Float,
    Rgba16Float,

    Rgb32Float,

    R32Float,
    R16Float,
}

def enum TextureType
{
    Unknown,
    Texture2D,
    Texture3D,
    TextureCube
}

def struct TexturePixelData
{
    pixelData: byte[]
}