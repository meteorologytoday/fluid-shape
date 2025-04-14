include("../src/FluidShape.jl")
using .FluidShape

using Printf


@printf("Library loading complete\n")


x = FluidShape.createVariableNode("x")
y = FluidShape.createVariableNode("y")
z = FluidShape.createVariableNode("z")

op1 = FluidShape.createOperatorNode("op1", "+", [x, y])
op2 = FluidShape.createOperatorNode("op2", "*", [z, op1])
op3 = FluidShape.createOperatorNode("op3", "cos", [z,])
op4 = FluidShape.createOperatorNode("op4", "+", [op3, op2, y])
op5 = FluidShape.createOperatorNode("op5", "D", [op4,])

println(FluidShape.string(op5))

