syms m;
for m=1:5
    g1=gamma(m+sym(1/2))*gamma(-m+sym(1/2))
    g2=(sym(-1))^m*pi
end
