syms t dt;
b=int(1/sqrt(3-cos(t)),t,0,pi)

% cos(t)=1-2*sqrt(u)
df=1/sqrt(3-cos(t))*dt

% Запутался((
