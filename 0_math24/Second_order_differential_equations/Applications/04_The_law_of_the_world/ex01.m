% d2r/dt2=-G*M/r^2

% d2r/dt2=dv/dt=dv/dr*dr/dt=v*dv/dr

% v*dv/dr=-G*M/r^2

syms r G M v(r) L
eqn=v*diff(v,r)+G*M/r^2
cond=v(L)==0
vSol=dsolve(eqn,cond)
%   2^(1/2)*((G*M)/r - (G*M)/L)^(1/2)
%  -2^(1/2)*((G*M)/r - (G*M)/L)^(1/2)
pretty(vSol(1))
%             / G M   G M \
% sqrt(2) sqrt| --- - --- |
%             \  r     L  /
v1=vSol(1)

% L -> inf
v1=subs(v1,L,inf)
% 2^(1/2)*((G*M)/r)^(1/2)
syms Mz
v1=subs(v1,M,Mz)
% 2^(1/2)*((G*Mz)/r)^(1/2)
% g=G*Mz/Rz^2
syms g Rz
v2=sqrt(2*g*Rz^2/r)
% v2(r=Rz)=sqrt(2*g*Rz^2/Rz)=sqrt(2*g*Rz)

% L < inf
% v(r=Rz)=sqrt(2*G*Mz(1/Rz-1/L))=sqrt(2*g*Rz)*sqrt(1-Rz/L)

% dr/dt=-v
% dr/dt=-Rz*sqrt(2*g)*sqrt(1/r-1/L)

syms t r(t) Rz g L
eqn1=diff(r,t)+Rz*sqrt(2*g)*sqrt(1/r-1/L)
rSol=dsolve(eqn1)
% ...
