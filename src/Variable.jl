mutable struct Variable <: Node 
    id      :: String
    dim     :: Integer
    fwd_mapping :: Function
    bwd_mapping :: Function
    val     :: AbstractArray{Float64}
end

function createVariable(id, dim, val)
    return Variable(
        id,
        dim,
        () -> val,
        () -> val,
        val,
    )
end

