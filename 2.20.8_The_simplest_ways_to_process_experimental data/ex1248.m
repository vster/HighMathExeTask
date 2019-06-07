clear
X=[0 2 6 8 10 14 16 20]
U=[32 29.2 23.3 19.9 17.2 11.3 7.8 2]
syms a0 a1 x u
eq=u-(a0+a1*x)
eq1=subs(eq,[x u],[X(1) U(1)])
eq2=subs(eq,[x u],[X(8) U(8)])
[a0 a1]=solve([eq1 eq2])
u=a0+a1*x
% 32 - (3*x)/2
D=a1*X+a0-U
% [ 0, -1/5, -3/10, 1/10, -1/5, -3/10, 1/5, 0]
SD=vpa(sum(D))
% -0.7
SD2=vpa(sum(D.^2))
% 0.31