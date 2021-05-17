clear;clc;
# Problem 3
f = @(x) x^3-x^2-1;
x0=1;
x1=2;
e=10^(-4);
N=100;
n=0;

while n<=N
  n=n+1;
  
  x=x1-f(x1)*( (x1 - x0) / (f(x1) - f(x0)));
  
  if abs(x1-x0)<=e
    break
  endif
  
  x0=x1;
  x1=x;
end

if n > N
  disp("Numar de iteratii max atins P3");
else
  fprintf("Valore aproximatie P3: %d dupa %d iteratii\n", x1, n);
end