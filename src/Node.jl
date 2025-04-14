
#abstract type Node end

mutable struct Node
    id      :: String
    ntype   :: Symbol
    op_name :: Union{String, Nothing}
    inputs  :: AbstractArray{Node}
end

function createVariableNode(id :: String)
    return Node(id, NodeType["Variable"], nothing, Array{Node, 1}(undef, 0))
end

function createOperatorNode(
    id :: String,
    op_name :: String,
    inputs :: Union{Nothing, Array{FluidShape.Node}} = nothing,
)
    
    if inputs == nothing
        inputs = Array{FluidShape.Node}(undef, 0)
    end

    return FluidShape.Node(id, FluidShape.NodeType["Operator"], op_name, inputs) 
    
end


