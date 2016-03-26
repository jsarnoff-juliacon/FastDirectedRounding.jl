module DirectedRounding

import Base: (+),(-),(*),(/),sqrt
import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftDivApprox, eftSquare, eftSqrtApprox
using AdjacentFloat

export (+),(-),(*),(/),sqrt,square

typealias Float Union{Float64,Float32,Float16}

include("eftRound.jl")
include("directedRounding.jl")

end # module
