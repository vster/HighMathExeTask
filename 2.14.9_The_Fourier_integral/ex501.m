% Find the cosine and sine functions of the function f(x)=exp(-x) (x>=0)

clear
syms x z u pi;
assume(x>0)
f(x)=exp(-x)

% Cosine Fourier transform
fc(z)=sqrt(2/pi)*int(f(u)*cos(z*u),u,0,+inf)
% (2^(1/2)*real((1 + z*1i)/(z^2 + 1)))/pi^(1/2)
fc(z)=sqrt(2/pi)*1/(z^2+1)
% 2^(1/2)/(pi^(1/2)*(z^2 + 1))

% Sine Fourier transform
fs(z)=sqrt(2/pi)*int(f(u)*sin(z*u),u,0,+inf)
% (2^(1/2)*imag((1 + z*1i)/(z^2 + 1)))/pi^(1/2)
fs(z)=sqrt(2/pi)*z/(z^2+1)
% (2^(1/2)*z)/(pi^(1/2)*(z^2 + 1))

f1(x)=sqrt(2/pi)*int(fc(z)*cos(z*x),z,0,+inf)
% exp(-x)

f2(x)=sqrt(2/pi)*int(fs(z)*sin(z*x),z,0,+inf)
% exp(-x)

% The Laplace integral
IL1=int(cos(z*x)/(z^2+1),z,0,+inf)
% (pi*exp(-x))/2

IL2=int(z*sin(z*x)/(z^2+1),z,0,+inf)
% (pi*exp(-x))/2

