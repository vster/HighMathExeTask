syms x;
y=sin(x)^2

ezplot(y,[-2*pi, 2*pi])
hold on
%1
%2
%3
s_x=solve(y)

%5
dy=simplify(diff(y))
s_dx=solve(dy)
%6
d2y=simplify(diff(y,2))
s_d2x=solve(d2y)