syms x lam mu;
assume(lam>0)
assume(mu>0)
I=int((x^lam-x^mu)/log(x),x,0,1)
% log(lam + 1) - log(mu + 1)
