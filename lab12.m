clear;clc;format long;

# Problem 1
f = @(x) cos(x);
df = @(x) -1*sin(x);
x0=pi/4;
e=10^(-4);
N=100;
n=0;

while n<=N
  n=n+1;
  
  x=x0-(f(x0)/df(x0));
  
  if abs(x-x0)<e
    break
  endif
  
  x0=x;
end

if n > N
  disp("Numar de iteratii max atins P1");
else
  fprintf("Valore aproximatie P1: %d dupa %d iteratii\n", x, n);
end

# Problem 2

f = @(x) x - 0.8 * sin(x) - (2 * pi) / 10;
df = @(x) 1 - (4 * cos(x)) / 5;
x0=1;
N=6;

for n = 1:N
  x0=x0-(f(x0)/df(x0));
end

fprintf("Valore aproximatie P2: %d pentru 6 iteratii\n", x0);

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

# Problem 4 bisection

f = @(x) (x-2)^2-log(x);
x0=0;
e=10^(-4);
N=100;
n=0;
a=1;
b=2;

if(f(a)*f(b) < 0)
  while n<=N
    n=n+1;
    c=(a+b)/2;
    
    if abs(f(c))/a<e
      break
    endif
    
    if(f(a)*f(c)<=0)
      b=c;
    else
      a=c;
    endif
  end
endif

if n > N
  disp("Numar de iteratii max atins P4 bisection");
else
  fprintf("Valore aproximatie P4 bisection: %d dupa %d iteratii\n", c, n);
end

# Problem 4 false position

f = @(x) (x-2)^2-log(x);
x0=0;
e=10^(-4);
N=100;
n=0;
a=1;
b=2;

if(f(a)*f(b) < 0)
  while n<=N
    n=n+1;
    c=( a*f(b) - b*f(a) ) / ( f(b) - f(a));
    
    if abs(f(c))/a<e
      break
    endif
    
    if(f(a)*f(c)<0)
      b=c;
    else
      a=c;
    endif
  end
endif

if n > N
  disp("Numar de iteratii max atins P4 false position");
else
  fprintf("Valore aproximatie P4 false position: %d dupa %d iteratii\n", c, n);
end