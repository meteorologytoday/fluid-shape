
#=
module BasicMapping

    using ..FluidShape

    function Add(x :: FluidShape.Node, y :: FluidShape.Node) 
        mpg = FluidShape.Mapping(
            "BasicAdd",
            [x, y],
            () -> x.fwd_mapping() + y.fwd_mapping(), 
            () -> x.val + y.val,
        )
        return mpg
    end

end
=#


operator_print_functions["+"] = function(node :: Node)
    return @sprintf( "(%s)", join([ string(input) for input in node.inputs ], " + ") )
end

operator_print_functions["*"] = function(node :: Node)
    return @sprintf( "(%s)", join([ string(input) for input in node.inputs ], " * ") )
end


module BasicOperators
    
    using ..FluidShape
    
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
    
end
