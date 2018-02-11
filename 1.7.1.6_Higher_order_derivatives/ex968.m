syms x n a b c d;
y=(a*x+b)/(c*x+d)
for n=1:6
    dy=simplify(diff(y,x,n))
end