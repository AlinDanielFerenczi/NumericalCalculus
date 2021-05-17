function y = repeatedTrapezium(a, b, f, n)
  h = (b-a)/n;
  xi = a:h:b;
  up = f(xi(1))+2*sum(f(xi(2:end-1)))+f(xi(end));
  y = h/2*up;
end