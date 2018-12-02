function [a0,a,b,abf]=fourierseries(f)
syms x real
syms m integer

a0=int(f(x),x,-pi,pi)/pi;

a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi;
a(m)=simplify(subs(a(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
af(m)=a(m)*cos(m*x);

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi;
b(m)=simplify(subs(b(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
bf(m)=b(m)*sin(m*x);

abf(m)=af(m)+bf(m);
end