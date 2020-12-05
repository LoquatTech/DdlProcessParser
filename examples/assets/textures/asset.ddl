[Asset { name: "texture" }]
[ConfigurableAsset]
def struct Texture
{
    [Configuration]
    [label = "Texture Path"]
    path: FilePath,

    [Configuration]
    [label = "Configuration"]
    configuration: TextureResourceConfiguration,

    [label = "Data"]
    data: TextureData
}

def process Texture
{
    data: processed by TextureLoader {
        path: path
        configuration: configuration
    }
}