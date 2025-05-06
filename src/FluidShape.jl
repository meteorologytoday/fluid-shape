module FluidShape
    
    using Printf
    using AbstractTrees
 
    include(joinpath(@__DIR__, "./Node.jl"))
    include(joinpath(@__DIR__, "./NodeType.jl"))
    include(joinpath(@__DIR__, "./PrintStructure.jl"))
    
    include(joinpath(@__DIR__, "./BasicOperators.jl"))

end
