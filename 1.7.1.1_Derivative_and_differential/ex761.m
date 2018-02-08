syms x k

y=sym(x/2*sqrt(x^2+k)+k/2*log(x+sqrt(x^2+k)))

dy=diff(y,x)

simplify(dy)