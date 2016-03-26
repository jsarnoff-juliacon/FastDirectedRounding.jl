module DirectedRounding


import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftDivApprox
using AdjacentFloat

typealias Float Union{Float64,Float32,Float16}

include("eftRound.jl")
include("directedRounding.jl")

end # module
