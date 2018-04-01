syms x y a;
eq1=(x^2+y^2)^2-2*a^2*x*y

% eq2=subs(eq1,a,1)
% ezplot(eq2)

syms ro teta;
eq1=subs(eq1,[x y],[ro*cos(teta), ro*sin(teta)])
eq1=simplify(eq1)
% - sin(2*teta)*a^2*ro^2 + ro^4
% ro^2 = sin(2*teta)*a^2
% ro=a*sqrt(sin(2*teta))

S=4*int(int(ro,ro,0,a*sqrt(sin(2*teta))),teta,0,pi/4)
% a^2