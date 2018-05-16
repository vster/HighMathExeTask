% f=x^2+y^2
% D: x^2+y^2=2*a*x

syms x y a;
eq=x^2+y^2-2*x

% ezplot(eq)
% grid on

f=x^2+y^2
D=x^2+y^2-2*a*x

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])
f=simplify(f)
% ro^2

D=subs(D,[x y],[x1 y1])
D=simplify(D)
% ro^2 = 2*a*cos(teta)*ro
% ro=2*a*cos(teta)

% ezpolar(2*cos(teta))

ID=int(int(f*ro,ro,0,2*a*cos(teta)),teta,0,pi)
% (3*pi*a^4)/2
