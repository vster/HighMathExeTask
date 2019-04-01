clear
syms t p alfa beta tau lam a
syms f(t) g(t) F(p) G(p)
syms n integer

% 1)
fg=alfa*f(t)+beta*g(t)
FG1=laplace(fg,t,p)
% alfa*laplace(f(t), t, p) + beta*laplace(g(t), t, p)
fg1=ilaplace(FG1,p,t)
% alfa*f(t) + beta*g(t)

% 2)
F1=laplace(f(alfa*t),t,p)
% laplace(f(alfa*t), t, p)
f1=ilaplace(1/alfa*F(p/alfa),p,t)
% ilaplace(F(p/alfa), p, t)/alfa
F1=laplace(exp(t),t,p)
% 1/(p - 1)
F2=laplace(exp(alfa*t),t,p)
% -1/(alfa - p)

% 3)
F1=laplace(f(t-tau),t,p)
% laplace(f(t - tau), t, p)
f1=ilaplace(exp(-p*tau)*F(p),p,t)
% ilaplace(exp(-p*tau)*F(p), p, t)
F1=laplace(exp(t),t,p)
% 1/(p - 1)
F2=laplace(exp(t-tau),t,p)
% exp(-tau)/(p - 1)

% 4)
F1=laplace(exp(-lam*t)*f(t),t,p)
% laplace(f(t), t, lam + p)
f1=ilaplace(F(p+lam),p,t)
% ilaplace(F(lam + p), p, t)
F2=laplace(exp(-lam*t)*exp(t),t,p)
% 1/(lam + p - 1)

% 5)
F1=laplace(f(t+a),t,p)
% laplace(f(a + t), t, p)

% 6)
F1=laplace(int(f(tau)*g(t-tau),tau,0,t),t,p)
% laplace(f(t), t, p)*laplace(g(t), t, p)
f1=ilaplace(F(p)*G(p),p,t)
% ilaplace(F(p)*G(p), p, t)

% 7)

% 8)
F1=laplace(f(t)*g(t),t,p)
% laplace(f(t)*g(t), t, p)

% 10)
for n=0:3
F1=laplace(diff(f,t,n),t,p)
end
% laplace(f(t), t, p)
% p*laplace(f(t), t, p) - f(0)
% p^2*laplace(f(t), t, p) - p*f(0) - subs(diff(f(t), t), t, 0)
% p^3*laplace(f(t), t, p) - p*subs(diff(f(t), t), t, 0) - p^2*f(0) - subs(diff(f(t), t, t), t, 0)

% 11)
for n=0:3
    f1=ilaplace(diff(F,p,n),p,t)
end

% 12)
F1=laplace(int(f(tau),tau,0,t),t,p)
% laplace(f(t), t, p)/p

% 13)
f1=ilaplace(int(F,p,p,inf),p,t)
% ilaplace(int(F(p), p, p, Inf), p, t)
