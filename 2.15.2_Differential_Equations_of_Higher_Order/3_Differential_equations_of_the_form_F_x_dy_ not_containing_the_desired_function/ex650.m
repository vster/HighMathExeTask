% s - distance traveled by the body
% v=ds/dt - velocity
% w=d2s/dt^2 - acceleration
% P=m*g - weight
% F=k*v^2=k*(ds/dt)^2 - windage

% Newton's Second Law
% m*w=P-k*v^2
% m*d2s/dt^2=mg-k*(ds/dt)^2

% Initial conditions
% If t=0, then s=0, v=ds/dt=0

% Replacing ds/dt to v we get
% dv/dt=g-k/m*v^2
% Put m*g/k=a^2, then dv/(a^2-v^2)=k/m*dt
syms t a v k m g
eq1=int(1/(a^2-v^2),v)-k/m*t
% atanh(v/a)/a - (k*t)/m + C1
% v=0,t=0 => C1=0
% atanh(v/a)/a = (k*t)/m
% atanh(v/a) = a*k*t/m
% v=a*tanh(a*k*t/m)
% ? ak/m=sqrt(m*g/k)*k/m=sqrt(k*g/m)
% v=ds/dt
% ds/dt=a*tanh(sqrt(k*g/m)*t)
s=simplify(int(a*tanh(sqrt(k*g/m)*t),t))
% a*t - (a*log(tanh(t*((g*k)/m)^(1/2)) + 1))/((g*k)/m)^(1/2)+C2
% a*t-m/k*log(tanh(t*((g*k)/m)^(1/2)) + 1))+C2
% t=0,s=0 => C2=0
s=m/k*log(tanh(t*((g*k)/m)^(1/2)))
v=a*tanh(t*((g*k)/m)^(1/2))
% where a=sqrt(m*g/k)
% lim(t->inf)=a=sqrt(P/k)


