
mutable struct Mapping <: Node

    id      :: String
    inputs  :: AbstractArray{Node}
    fwd_mapping :: Function
    bwd_mapping :: Function

end
