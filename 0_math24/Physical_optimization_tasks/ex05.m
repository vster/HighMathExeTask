syms R h L I alfa
% Освещенность края стола
E=I/L^2*cos(alfa)
% L^2=h^2+R^2
% cos(alfa)=h/L=h/sqrt(h^2+R^2)
E=subs(E,[cos(alfa) L],[h/sqrt(h^2+R^2) sqrt(h^2+R^2)])
% (I*h)/(R^2 + h^2)^(3/2)
dE=diff(E,h)
dE=simplify(dE)
% (I*(R^2 - 2*h^2))/(R^2 + h^2)^(5/2)
slv=solve(R^2 - 2*h^2,h)
h1=slv(1)
% h1=(2^(1/2)*R)/2 - точка максимума

% Максимальная освещенность
E_max=subs(E,h,h1)
% (2*3^(1/2)*I*R)/(9*(R^2)^(3/2))
% (2*3^(1/2)*I)/(9*R^2)
% 2*I/(sqrt(27)*R^2)