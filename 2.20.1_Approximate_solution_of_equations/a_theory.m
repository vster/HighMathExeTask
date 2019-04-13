% 1. Chord method
% Solve equation f(x)=0 on [a,b]

% x1=a-(b-a)*f(a)/(f(b)-f(a))
% x2=x1-(b-x1)*f(x1)/(f(b)-f(x1))

% |X-ksi|<-(f(a)*f(b))/2*max([a;b])|f"(x)/f'(x)^3|

% 2. Tangent method (Newton method)
% Solve equation f(x)=0 on [a,b]
% assume f(x0)*f"(x0)>0

% x1=x0-f(x0)/f'(x0)
% x2=x1-f(x1)/f'(x1)

% |X-ksi|<f(ksi)^2/2*max([a;b])abs(f"(x)/f'(x)^3)

% 3. Combined Chord and Tangent Method
% Solve equation f(x)=0 on [a,b]

% x11=x0-f(x0)/f'(x0)
% x12=a-(b-a)*f(a)/(f(b)-f(a))

% x21=x11-f(x11)/f'(x11)
% x22=x11-(x12-x11)*f(x11)/(f(x12)-f(x11))

% x31=x21-f(x21)/f'(x21)
% x32=x21-(x22-x21)*f(x21)/(f(x22)-f(x21))

% 4. Iteration method
% If this equation is reduced to x=phi(x)
% x1=phi(x0), 
% x2=phi(x1) ... 
% x(n)=phi(x(n-1))
% |X-x(n)|<r/(1-r)*|x(n)-x(n-1)|
% |x(n)-x(n-1)|<(r-1)/r*eps

% 5. Trial method



