% f=x^2+y^2
% D: x^2+y^2=2*a*x

syms x y a;
eq=x^2+y^2-2*x

% ezplot(eq)
% grid on

syms ro teta;
x=ro*cos(teta)
y=ro*sin(teta)
f=x^2+y^2
f=simplify(f)

D=x^2+y^2-2*a*x
D=simplify(D)
% ro^2 = 2*a*cos(teta)*ro
% ro=2*a*cos(teta)

% ezpolar(2*cos(teta))

I1=int(ro^3,ro,0,2*a)
ID=int(I1,teta,0,2*pi)

% Не сходится!