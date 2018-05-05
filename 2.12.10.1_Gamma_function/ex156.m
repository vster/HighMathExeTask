syms m;
for m=1:5
    g1=gamma(sym(-m+1/2))
    g2=(-2)^m/factorial(sym(2)*m-sym(1))*pi^(sym(1/2))
end