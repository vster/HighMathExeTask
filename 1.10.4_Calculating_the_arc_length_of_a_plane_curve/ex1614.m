syms x;
y=2/5*x*x^(1/4)-2/3*x^(3/4)

ezplot(y)

slv=solve(y==0)

% 0 25/9

dy=diff(y)

c=sqrt(1+dy^2)

L=int(c,0,25/9)