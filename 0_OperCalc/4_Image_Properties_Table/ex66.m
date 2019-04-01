clear
syms t p alfa w A
f=A*abs(sin(w*t))
F=laplace(f,t,p)
% (A*w*coth((pi*p)/(2*w)))/(p^2 + w^2)