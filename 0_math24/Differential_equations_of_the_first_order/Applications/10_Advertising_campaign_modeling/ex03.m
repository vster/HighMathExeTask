% q(t)=q0+alfa*t
% 12*(q0+6*alfa)=U
% alfa=1/72*(U-12*q0)
% q(t)=q0+(U-12*q0)*t/72

syms q0 U t
qt=q0+(U-12*q0)*t/72
syms b k C
At=(b*int(exp(k*t)*qt,t)+C)/exp(k*t)
At=simplify(At)
% (12*b*q0 - U*b + 72*C*k^2*exp(-k*t) + 72*b*k*q0 - 12*b*k*q0*t + U*b*k*t)/(72*k^2)
At0=subs(At,t,0)
% (72*C*k^2 + 72*b*q0*k - U*b + 12*b*q0)/(72*k^2)=0
C1=solve(At0,C)
C1=simplify(C1)
% -(b*(12*q0 - U + 72*k*q0))/(72*k^2)
At=subs(At,C,C1)
At=simplify(At)
% -(U*b - 12*b*q0 + b*exp(-k*t)*(12*q0 - U + 72*k*q0) - 72*b*k*q0 + 12*b*k*q0*t - U*b*k*t)/(72*k^2)

At1=subs(At,[k b U],[1/4 25 12000])
At1=simplify(At1)
% (500*q0)/3 + (50000*t)/3 - (50*q0*t)/3 - (50*exp(-t/4)*(30*q0 - 12000))/9 - 200000/3

At2=subs(At1,q0,1000)
% 100000 - 100000*exp(-t/4)