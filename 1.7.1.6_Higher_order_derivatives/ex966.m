syms x n;
y=5-3*cos(x)^2
for n=1:6
    dy=simplify(diff(y,x,n))
end