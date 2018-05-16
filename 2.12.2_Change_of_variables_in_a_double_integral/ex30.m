% f=1-y^2/x^2
% ID=int(int(f),D)
% x^2+y^2<=pi^2

syms x y;
f=1-y^2/x^2

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])

f=1-tan(teta)^2
% f=simplify(f)

I1=int(f*ro,ro,0,pi)
ID=int(I1,teta,0,2*pi)
% -Inf - ?
% Not correct!
% (2*pi^3)