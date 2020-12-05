[Asset { name: "model" }]
[ConfigurableAsset]
def struct Model
{
    [Configuration]
    [label = "Model Path"]
    path: FilePath,

    [Configuration]
    [label = "Configuration"]
    configuration: ModelConfiguration,

    [Configuration]
    [label = "Material"]
    material: handle Material,

    [label = "Imported Data"]
    importedData: ImportedModelData,

    [label = "Data"]
    data: ModelData
}

def struct ModelData
{
    geometryCollection: ModelGeometryCollection,
    modelNodes: ModelNode[]
}

def process Model
{
    importedData: processed by ModelImporter {
        path: path,
        configuration: configuration
        material: material,
    }
        
    data: processed by ModelProcessor {
            importedData: importedData
    }
}