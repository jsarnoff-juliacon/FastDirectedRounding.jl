module DirectedRounding

import Base: (+),(-),(*),(/),sqrt

using Genera
using AdjacentFloat

import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftDivApprox, eftSqr, eftSqrtApprox

export (+),(-),(*),(/),sqrt,sqr


include("eftRound.jl")
include("directedRounding.jl")

end # module
