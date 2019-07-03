clear
% J(y(x))=int(0:log(2))(yd^2+2*y^2+2*y)*exp(-x)*dx
% y(0)=y(log(2))=0

syms x y(x) yd(x) C1 C2
F=(yd^2+2*y^2+2*y)*exp(-x)
p(x)=exp(-x)
q(x)=2*exp(-x)
f(x)=exp(-x)
eq1=diff(p*yd,x)-q*y-f
% exp(-x)*diff(yd(x), x) - 2*y*exp(-x) - exp(-x) - exp(-x)*yd(x)
eq1=simplify(eq1/exp(-x))
% diff(yd(x), x) - yd(x) - 2*y(x) - 1
eq2=diff(y,x,2)-diff(y,x)-2*y-1
ySol=dsolve(eq2)
% C9*exp(2*x) + C10*exp(-x) - 1/2
y1=C1*exp(2*x) + C2*exp(-x) - 1/2

syms x y
eq3=y-y1
% y - C1*exp(2*x) - C2*exp(-x) + 1/2
eq4=subs(eq3,[x y],[0 0])
% 1/2 - C2 - C1
eq5=subs(eq3,[x y],[log(sym(2)) 0])
% 1/2 - C2/2 - 4*C1
[C11 C21]=solve([eq4 eq5],[C1 C2])
% C11 =
% 1/14
% C21 =
% 3/7
y=subs(y1,[C1 C2],[C11 C21])
% (3*exp(-x))/7 + exp(2*x)/14 - 1/2
