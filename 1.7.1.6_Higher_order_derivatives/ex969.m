syms x k;
y=exp(k*x)
for n=1:6
    dy=simplify(diff(y,x,n))
end