% Equations with separable variables

% A first-order differential equation y' = f(x,y) is called an equation 
% with separable variables if the function f(x,y) can be represented 
% as a product of two functions depending only on x and y:
% f(x,y)=p(x)*h(y)
% where p(x) and h(y) - continuous functions

% Considering the derivative y' as the ratio of the differentials dy/dx
% move dx to the right side and divide the equation by h(y):
% dy/dx=p(x)*h(y) => dy/h(y)=p(x)*dx

% Denoting q(y)=1/h(y)  we write the equation in the form:
% q(y)*dy=p(x)*dx

% Now the variables are separated and we can integrate the 
% differential equation:
% int(q(y),y)=int(p(x),x)+C
% where C - integration constant

% Calculating the integrals, we get the expression
% Q(y)=P(x)+C
% describing the general solution of an equation with separable variables.