syms t;
s=t*log(t+1)
t0=2
% ����� �������� �������� � ����� t0

ds=diff(s)
v=subs(ds,t0)
v=vpa(v)