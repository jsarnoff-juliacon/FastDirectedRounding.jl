module FastDirectedRounding

import Base: (+),(-),(*),(/),sqrt

using AdjacentFloat

import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftSqr, accDiv, accSqrt

export (+),(-),(*),(/),sqrt,sqr


include("eftRound.jl")
include("directRounding.jl")

end # module
