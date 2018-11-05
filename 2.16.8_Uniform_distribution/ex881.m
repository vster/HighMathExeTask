syms a b x
assume(a<b)
f(x)=piecewise(x<a,0,a<=x<=b,1/(b-a),x>b,0)

MX=int(x*f(x),x,a,b)
% a/2 + b/2

MX2=int(x^2*f(x),x,a,b)
% a^2/3 + (a*b)/3 + b^2/3

DX=simplify(MX2-MX^2)
% (a - b)^2/12

sigx=sqrt(DX)
% (12^(1/2)*(b - a))/12
