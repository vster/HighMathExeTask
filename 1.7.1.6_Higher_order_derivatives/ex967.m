syms x n;
y=2^x+2^(-x)
for n=1:6
    dy=simplify(diff(y,x,n))
end