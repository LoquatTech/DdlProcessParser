[Asset { name: "shader" }]
[ConfigurableAsset]
def struct Shader 
{
    [Configuration]
    [label = "Shader Source"]
    source: ShaderSource,

    [Configuration]
    [label = "Compilation Configuration"]
    compilationConfiguration: ShaderCompilationConfiguration,

    [Configuration]
    [label = "Value Mapping Configuration"]
    valueMapping: ValueMappingConfiguration,

    [label = "Compiled Data"]
    compiledData: ShaderCompiledData,

    [label = "Reflection Data"]
    reflectionData: ReflectionData,

    [label = "Filtered Data"]
    filteredData: FilteredData
}

def process Shader
{
    compiledData: processed by ShaderCompiler {
        shaderSource: source
        configuration: compilationConfiguration
    }
        
    reflectionData: processed by ShaderReflector {
            compiledShader: compiledData
    }
    
    filteredData: processed by ValueMapper {
        configuration: valueMapping
        reflection: reflectionData
    }
}