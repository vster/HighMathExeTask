syms x n;
y=cos(x)
for n=1:6
    dy=simplify(diff(y,x,n))
end