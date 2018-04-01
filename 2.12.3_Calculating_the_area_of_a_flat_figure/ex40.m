syms x y a;
eq1=x^3+y^3-a*x*y

syms ro teta;
eq1=subs(eq1,[x y],[ro*cos(teta), ro*sin(teta)])
eq1=simplify(eq1)
% ro^3*cos(teta)^3 + ro^3*sin(teta)^3 - a*ro^2*cos(teta)*sin(teta)
eq1=ro*cos(teta)^3 + ro*sin(teta)^3 - a*cos(teta)*sin(teta)
slv=solve(eq1==0,ro)
% (a*cos(teta)*sin(teta))/(cos(teta)^3 + sin(teta)^3)
ro1=0
ro2=(a*cos(teta)*sin(teta))/(cos(teta)^3 + sin(teta)^3)

S=2*int(int(ro,ro,0,ro2),teta,0,pi/4)
% a^2/6