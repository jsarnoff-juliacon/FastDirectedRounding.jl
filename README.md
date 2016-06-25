## FastDirectedRounding
###### faster rounding up and down and nearest without switching the fpu's rounding mode
```ruby
                                                       Jeffrey Sarnoff © 2016-Jun-25 in Cambridge, MA
```

#### Use

with a,b floating point values, op in {+,-,*,/,sqrt,square} and rounding a rounding mode  
  (the rounding modes are RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero)

              value = (op)(a, b, rounding )       
              c     = ( +)(a, b, RoundDown)

  (this package offers RoundFromZero for Floats, while Julia v0.5 does not)

##### Rounding made faster (q.v. src dir, AdjacentFloat.jl)
```
# hi, lo are the two parts of a precision-doubled floating point type
# given a rounding mode, the signs of hi and lo select the rounding logic

    RoundDown
    
       hi  lo         rounding        fast rounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          prevfloat(hi)   nextNearerToZero(hi) == prevFloat(hi)
       -   +          hi              hi
       -   -          prevfloat(hi)   nextAwayFromZero(hi) == prevFloat(hi)
       
    RoundUp
    
       hi  lo         rounding        fast rounding
       --------------------------------------------------------------------
       +   +          nextfloat(hi)   nextAwayFromZero(hi) == nextFloat(hi)
       +   -          hi              hi
       -   +          nextfloat(hi)   nextNearerToZero(hi) == nextFloat(hi)
       -   -          hi              hi
       
    RoundFromZero
       
       hi  lo         rounding        fast rounding
       --------------------------------------------------------------------
       +   +          nextfloat(hi)   nextAwayFromZero(hi) == nextFloat(hi)
       +   -          hi              hi
       -   +          hi              hi
       -   -          prevfloat(hi)   nextAwayFromZero(hi) == prevFloat(hi)
       
    RoundToZero
       
       hi  lo         rounding        fast rounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          prevfloat(hi)   nextNearerToZero(hi) == prevFloat(hi)
       -   +          nextfloat(hi)   nextNearerToZero(hi) == prevFloat(hi)
       -   -          hi              hi
       
    RoundNearest
       
       hi  lo         rounding        fast rounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          hi              hi
       -   +          hi              hi
       -   -          hi              hi
```
