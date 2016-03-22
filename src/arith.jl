function (+){T<:AbstractFloat, R<:RoundingMode}(a::T, b::T, rounding::R)
    hi,lo = eftAdd(a,b)
    eftRound(hi, lo, rounding)
end

function (-){T<:AbstractFloat, R<:RoundingMode}(a::T, b::T, rounding::R)
    hi,lo = eftSub(a,b)
    eftRound(hi, lo, rounding)
end

function (*){T<:AbstractFloat, R<:RoundingMode}(a::T, b::T, rounding::R)
    hi,lo = eftMul(a,b)
    eftRound(hi, lo, rounding)
end

function (/){T<:AbstractFloat, R<:RoundingMode}(a::T, b::T, rounding::R)
    hi,lo = eftDiv2Approx(a,b)
    eftRound(hi, lo, rounding)
end

function (square){T<:AbstractFloat, R<:RoundingMode}(a::T, rounding::R)
    hi,lo = eftSquare(a)
    eftRound(hi, lo, rounding)
end

function (sqrt){T<:AbstractFloat, R<:RoundingMode}(a::T, rounding::R)
    hi,lo = eftSqrtApprox(a)
    eftRound(hi, lo, rounding)
end
