% f=1/(x^2+y^2+1)
% D: y=sqrt(1-x^2), ось Ox

syms x y;
f=1/(x^2+y^2+1)

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])
f=simplify(f)
% 1/(ro^2 + 1)

ID=int(int(f*ro,0,1),teta,0,pi)
% (pi*log(2))/2