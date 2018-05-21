syms x;
I=int(x*sin(x)/cos(x)^2,x,-pi/3,pi/3)
I=simplify(I)
% (4*pi)/3 + 2*log(2 - 3^(1/2))