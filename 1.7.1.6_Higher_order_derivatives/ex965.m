syms x n;
y=1/(2*x+1)
for n=1:6
    dy=simplify(diff(y,x,n))
end