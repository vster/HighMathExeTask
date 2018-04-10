% int int (R) (x^2+y^2) dy dx
% R= {(ro,teta) |  0 <= ro <= sqrt(3), 0 <= teta <= pi/2 }

syms x y;
f=x^2+y^2

syms ro teta;
f=subs(f,[x y],[ro*cos(teta) ro*sin(teta)])
f=simplify(f)
% ro^2

I=int(int(f*ro,ro,0,sqrt(3)),teta,0,pi/2)
% (9*pi)/8
