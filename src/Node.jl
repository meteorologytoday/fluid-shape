
#abstract type Node end

mutable struct Node
    id      :: String
    ntype   :: Symbol
    op_name :: Union{String, Nothing}
    inputs  :: AbstractArray{Node}
end

function createVariableNode(id :: String)
    return Node(id, FluidShape.NodeType["Variable"], nothing, Array{Node, 1}(undef, 0))
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


AbstractTrees.children(node::Node) = node.inputs
function AbstractTrees.printnode(io::IO, node::Node)
    local full_name

    if node.ntype == FluidShape.NodeType["Variable"]
        full_name = @sprintf("%s", node.id)
    elseif node.ntype == FluidShape.NodeType["Operator"]
        full_name = @sprintf("%s[%s]", node.id, node.op_name)
    end
    
    print(io, full_name)
end

print_tree(node::Node) = AbstractTrees.print_tree(node)

