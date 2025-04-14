
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
