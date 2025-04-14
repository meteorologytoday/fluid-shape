include("../src/FluidShape.jl")
using .FluidShape

using Printf


@printf("Library loading complete\n")


x = FluidShape.createVariable("x", 1, [6.0,])
y = FluidShape.createVariable("y", 1, [3.0,])

add = FluidShape.BasicMapping.Add(x, y)


println(add.fwd_mapping())



