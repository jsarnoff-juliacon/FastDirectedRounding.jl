module DirectedRounding

import Base: (+),(-),(*),(/),sqrt
import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftDivApprox, eftSqr, eftSqrtApprox
using AdjacentFloat

export (+),(-),(*),(/),sqrt,sqr

typealias Float Union{Float64,Float32,Float16}

include("eftRound.jl")
include("directedRounding.jl")

end # module
