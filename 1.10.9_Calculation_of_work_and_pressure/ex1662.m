syms x k x1;
% k=1/0.01
% x1=0.04

F=k*x
A=int(F,x,0,x1)
A1=subs(A,[k x1],[100,0.04])
% 2/25
% 0.08 J
