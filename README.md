## DirectedRounding
###### fast switching directed rounding for inline arithmetic
```ruby
                                                       Jeffrey Sarnoff © 2016-Mar-22 in New York City
```

#### Use

with a,b floating point values, op in {+,-,*,/,sqrt,square} and rounding a rounding mode
  (the rounding modes are RoundNearest, RoundUp, RoundDown, RoundToZero, RoundFromZero)

              value = (op)(a, b, rounding )       
              c     = ( +)(a, b, RoundDown)

  (note: this offers RoundFromZero for Floats, while Julia v0.5 does not)

```
       hi  lo are the two parts of a precision-doubled floating point type
       

    RoundDown
    
       hi  lo         rounding        fastrounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          prevfloat(hi)   nextNearerToZero(hi) == prevFloat(hi)
       -   +          hi              hi
       -   -          prevfloat(hi)   nextAwayFromZero(hi) == prevFloat(hi)
       
    RoundUp
    
       hi  lo         rounding        fastrounding
       --------------------------------------------------------------------
       +   +          nextfloat(hi)   nextAwayFromZero(hi) == nextFloat(hi)
       +   -          hi              hi
       -   +          nextfloat(hi)   nextNearerToZero(hi) == nextFloat(hi)
       -   -          hi              hi
       
    RoundFromZero
       
       hi  lo         rounding        fastrounding
       --------------------------------------------------------------------
       +   +          nextfloat(hi)   nextAwayFromZero(hi)
       +   -          hi              hi
       -   +          hi              hi
       -   -          prevfloat(hi)   nextAwayFromZero(hi
       
    RoundToZero
       
       hi  lo         rounding        fastrounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          prevfloat(hi)   nextNearerToZero(hi)
       -   +          nextfloat(hi)   nextNearerToZero(hi)
       -   -          hi              hi
       
    RoundNearest
       
       hi  lo         rounding        fastrounding
       --------------------------------------------------------------------
       +   +          hi              hi
       +   -          hi              hi
       -   +          hi              hi
       -   -          hi              hi
```
