module FluidShape

    include(joinpath(@__DIR__, "./Node.jl"))
    include(joinpath(@__DIR__, "./Mapping.jl"))
    include(joinpath(@__DIR__, "./Variable.jl"))
    
    include(joinpath(@__DIR__, "./BasicMapping.jl"))

end
