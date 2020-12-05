[Asset { name: "surface-shader" }]
[ConfigurableAsset]
def struct SurfaceShader 
{
    [Configuration]
    [label = "Configuration"]
    configuration: SurfaceShaderConfiguration,

    [label = "Data"]
    data: SurfaceShaderData
}

def struct SurfaceShaderData
{
    vertexShader: handle Shader,
    pixelShader: handle Shader,
    
    vertexData: VertexShaderFilteredData,
    pixelData: PixelShaderFilteredData
}

def struct SurfaceShaderConfiguration
{
    vertexShader: handle Shader,
    pixelShader: handle Shader,
}

def process SurfaceShader
{
    data: assembled {
        vertexShader = handle configuration.vertexShader,
        pixelShader = handle configuration.pixelShader,
        vertexData = configuration.vertexShader.filteredData
        pixelData = configuration.pixelShader.filteredData
    }
}