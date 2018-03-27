% f=1/(x^2+y^2+1)
% D: y=sqrt(1-x^2), ось Ox

syms ro teta;
x=ro*cos(teta)
y=ro*sin(teta)
f=1/(x^2+y^2+1)
f=simplify(f)

I1=int(f*ro,ro,0,1)
ID=int(I1,teta,0,pi)
% (pi*log(2))/2