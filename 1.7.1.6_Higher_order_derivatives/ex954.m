syms x a
y=x*log(x+sqrt(x^2+a^2))-sqrt(x^2+a^2)
Dy2=diff(y,2)
Dy2=simplify(Dy2)
