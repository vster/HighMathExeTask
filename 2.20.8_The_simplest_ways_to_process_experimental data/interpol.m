function phi=interpol(f,a,b)
syms x a0 a1 a2 a3 
phi(x)=a0*x^3+a1*x^2+a2*x+a3;
eq1=int((phi(x)-f(x))*x^3,x,a,b);
eq2=int((phi(x)-f(x))*x^2,x,a,b);
eq3=int((phi(x)-f(x))*x,x,a,b);
eq4=int((phi(x)-f(x)),x,a,b);
[a01 a11 a21 a31]=solve([eq1 eq2 eq3 eq4],[a0 a1 a2 a3]);
a01=vpa(a01);
a11=vpa(a11);
a21=vpa(a21);
a31=vpa(a31);
phi(x)=subs(phi(x),[a0 a1 a2 a3],[a01 a11 a21 a31]);
end