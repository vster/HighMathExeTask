% It is known that the second term of an infinitely decreasing 
% geometric progression (| q | <1) is 21, and the sum is 112. 
% Find the first term and the denominator of the progression.

% S=sum(n=0:inf)a1*q^n = a1/(1-q)

syms a1 q n;
% a2=a1*q
% 112=a1/(1-q)
% 21=a1*q
eq1=a1/(1-q)-112
eq2=a1*q-21

slv=solve(eq1,eq2)

% 1
slv1=[slv.a1(1),slv.q(1)]
% [a1,q]=[ 28, 3/4]

% 2
slv2=[slv.a1(2),slv.q(2)]
% [a1,q]=[ 84, 1/4]

