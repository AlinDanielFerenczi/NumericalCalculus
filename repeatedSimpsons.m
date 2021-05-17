function y = repeatedSimpsons(f, a, b, n)
  h = (b-a)/n; 
  xi = a:h:b;
  up = f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end));
  y = h/3*up;
end