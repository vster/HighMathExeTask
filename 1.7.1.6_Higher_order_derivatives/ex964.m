syms x n;
y=x^n*sqrt(x)
for n=1:6
    dy=simplify(diff(y,x,n))
end