% Jet propulsion

% Differential equation of jet propulsion
% p1=(m-dm)*(v+dv)
% p2=dm*(v-u)
% p=p1+p2 => m*v=(m-dm)*(v+dv)+dm*(v-u)
syms m dm v dv u
eq1=m*v-((m-dm)*(v+dv)+dm*(v-u))
eq1=simplify(eq1)
% dm*dv - dv*m + dm*u
% m*dv=u*dm
% m*dv/dt=u*dm/dt
% T=u*dm/dt - Traction force

% Formula Tsiolkovsky
% m*dv=u*dm
% dv=u*dm/m => int (v0:v1) dv = int (m0:m1) u*dm/m
% v1-v0=u*log(m0/m1)
% v=u*log(m0/m)

