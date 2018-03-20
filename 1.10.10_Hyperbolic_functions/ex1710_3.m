syms n x;

for n=1:10
    z1=sinh(n*x)
    z1=simplify(z1)
    
    z2=((cosh(x)+sinh(x))^n-(cosh(x)-sinh(x))^n)/2
    z2=simplify(z2)
    
    c=z1-z2
end