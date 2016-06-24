function (inv){T<:AbstractFloat, R<:RoundingMode}(a::T, rounding::R)
    hi,lo = accInv(a)
    eftRound(hi, lo, rounding)
end

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
    hi,lo = accDiv(a,b)
    eftRound(hi, lo, rounding)
end

function (\){T<:AbstractFloat, R<:RoundingMode}(a::T, b::T, rounding::R)
    hi,lo = accDiv(b,a)
    eftRound(hi, lo, rounding)
end

function (sqr){T<:AbstractFloat, R<:RoundingMode}(a::T, rounding::R)
    hi,lo = eftSqr(a)
    eftRound(hi, lo, rounding)
end

function (sqrt){T<:AbstractFloat, R<:RoundingMode}(a::T, rounding::R)
    hi,lo = accSqrt(a)
    eftRound(hi, lo, rounding)
end
