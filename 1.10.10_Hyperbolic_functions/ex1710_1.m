syms x n

for n=1:10
    z1=(cosh(x)+sinh(x))^n
    z1=simplify(z1)
    
    z2=cosh(n*x)+sinh(n*x)
    z2=simplify(z2)
    
    c=z1-z2
end