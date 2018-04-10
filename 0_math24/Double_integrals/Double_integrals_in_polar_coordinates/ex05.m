% int int (R) sin(sqrt(x^2+y^2)) dx dy
% R: x^2+y^2<=pi^2

% R= {(ro,teta) |  1 <= ro <= pi, 0 <= teta <= 2*pi }

syms x y;
f=sin(sqrt(x^2+y^2))

syms ro teta;
f=subs(f,[x y],[ro*cos(teta) ro*sin(teta)])
f=simplify(f)
% sin((ro^2)^(1/2))
f=sin(ro)

I=int(int(f*ro,ro,0,pi),teta,0,2*pi)
% 2*pi^2