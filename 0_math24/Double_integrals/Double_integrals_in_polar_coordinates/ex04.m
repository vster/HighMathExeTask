% int int (R) (x^2+y^2) dx dy
% R: x^2+y^2=2*x

syms x y;
f=x^2+y^2
R=x^2+y^2-2*x

syms ro teta;
f=subs(f,[x y],[ro*cos(teta) ro*sin(teta)])
f=simplify(f)
% ro^2

R=subs(R,[x y],[ro*cos(teta) ro*sin(teta)])
R=simplify(R)
slv=solve(R==0, ro)
ro1=slv(2)
% 2*cos(teta)

I=int(int(f*ro,ro,0,ro1),teta,-pi/2,pi/2)
% (3*pi)/2