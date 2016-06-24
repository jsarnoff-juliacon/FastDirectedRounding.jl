module FastDirectedRounding

import Base: (+), (-), (*), (/), (\), sqrt, hypot, inv

using AdjacentFloat

import ErrorfreeArithmetic: eftAdd, eftSub, eftMul, eftSqr, accDivForSign, accInv, accSqrtForSign

export sqr


include("eftRound.jl")
include("directRounding.jl")

end # module
