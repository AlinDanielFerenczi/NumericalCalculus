# Problem 1
clear; clc;
x=[1930 1940 1950 1960 1970 1980];
y=[123203 131669 150697 179323 203212 226505];

xx=[1955 1995];
m = length(x);
n = length(xx);
lgr = zeros(1, n);

for k = 1:n
  lgrTop = 0;
  lgrBottom = 0;
  ai= zeros(1, m);
  
  for i = 1:m
    product = 1;
    
    for j = 1:m
      if(i == j)
        continue
      endif
      
      product = product * (x(i) - x(j));
    endfor
    
    ai(i) = 1 / product;
  endfor
  
  for i = 1:m
    lgrTop = lgrTop + ((ai(i) * y(i)) / (xx(k) - x(i)));
    lgrBottom = lgrBottom + (ai(i) / (xx(k) - x(i)));
  endfor

  lgr(k) = lgrTop / lgrBottom;
endfor

lgr

# Problem 2
clear;

x=[100 121 144];
y=[10 11 12];

xx=[115];

m = length(x);
n = length(xx);
lgr = zeros(1, n);

for k = 1:n
  lgrTop = 0;
  lgrBottom = 0;
  ai= zeros(1, m);
  
  for i = 1:m
    product = 1;
    
    for j = 1:m
      if(i == j)
        continue
      endif
      
      product = product * (x(i) - x(j));
    endfor
    
    ai(i) = 1 / product;
  endfor
  
  for i = 1:m
    lgrTop = lgrTop + ((ai(i) * y(i)) / (xx(k) - x(i)));
    lgrBottom = lgrBottom + (ai(i) / (xx(k) - x(i)));
  endfor

  lgr(k) = lgrTop / lgrBottom;
endfor

lgr

# Problem 3
clear;

xx=0:.01:10;
x=0:.01:10;
m = length(x);
y = zeros(1,m);

for i = 1:m
  y(i) = ( 1 + cos( pi * x(i) ) ) / ( 1 + x(i) );
endfor

plot(x, y, 'Color', 'r');

x=linspace(0,10,21);

m = length(x);
y = zeros(1,m);

for i = 1:m
  y(i) = ( 1 + cos( pi * x(i) ) ) / ( 1 + x(i) );
endfor

n = length(xx);
lgr = zeros(1, n);

for k = 1:n
  lgrTop = 0;
  lgrBottom = 0;
  ai= zeros(1, m);
  
  for i = 1:m
    product = 1;
    
    for j = 1:m
      if(i == j)
        continue
      endif
      
      product = product * (x(i) - x(j));
    endfor
    
    ai(i) = 1 / product;
  endfor
  
  for i = 1:m
    lgrTop = lgrTop + ((ai(i) * y(i)) / (xx(k) - x(i)));
    lgrBottom = lgrBottom + (ai(i) / (xx(k) - x(i)));
  endfor

  lgr(k) = lgrTop / lgrBottom;
endfor

hold on
plot(xx, lgr, 'Color', 'b');