% int int (R) x*y dy dx
% R:
% x^2+y^2=1
% x^2+y^2=5

% R= {(ro,teta) |  1 <= ro <= sqrt(5), 0 <= teta <= 2*pi }

syms x y;
f=x*y

syms ro teta;
f=subs(f,[x y],[ro*cos(teta) ro*sin(teta)])
f=simplify(f)
% (ro^2*sin(2*teta))/2

I=int(int(f*ro,ro,1,sqrt(5)),teta,0,2*pi)
% 0