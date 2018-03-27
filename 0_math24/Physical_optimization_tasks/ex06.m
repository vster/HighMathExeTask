% Уравнение движения груза в векторной форме
% m*a=F+m*g+Ftr+N
% Если груз в покое
% F+m*g+Ftr+N=0

% В проекции на координатные оси
% F*cos(alfa)-Ftr=0
% F*sin(alfa)-m*g+N=0

% Сила трения
% Ftr=k*N

% F*cos(alfa)-k*N=0
% F*sin(alfa)-m*g+N=0 -> N=m*g-F*sin(alfa)

% F*cos(alfa)-k*(m*g-F*sin(alfa))=0
syms F alfa k m g;
slv=solve(F*cos(alfa)-k*(m*g-F*sin(alfa))==0,F)
% (g*k*m)/(cos(alfa) + k*sin(alfa))
F=slv
dF=diff(F,alfa)
% (g*k*m*(sin(alfa) - k*cos(alfa)))/(cos(alfa) + k*sin(alfa))^2
slv=solve(sin(alfa) - k * cos(alfa)==0,k)
% k=sin(alfa)/cos(alfa)=tan(alfa)
alfa1=atan(k)

F_min=subs(F,alfa,alfa1)
F_min=simplify(F_min)
% K_min=(g*k*m)/(k^2 + 1)^(1/2)

