operator_print_functions = Dict()

function string(node :: Node)

    if node.ntype == NodeType["Variable"]
        return node.id
    elseif node.ntype == NodeType["Operator"]
        
        if haskey(operator_print_functions, node.op_name)
            str = FluidShape.operator_print_functions[node.op_name](node)
        else
            arg_list = join([ string(input) for input in node.inputs ], ", ")
            str = @sprintf("%s(%s)", node.op_name, arg_list)
        end

        return str
    end

    throw(ErrorException(@sprintf("Unknown node type: %s", string(node.ntype))))
end
