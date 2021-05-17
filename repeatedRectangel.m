function y = repeatedRectangel(f, a, b, n)
  midpoint = (b-a)/n;
  
  x1 = a + midpoint/2;
  i = 2:n;
  xi = x1 + (i-1) * midpoint;
  
  s = f(x1) + sum(f(xi(1: length(xi))));
  y = midpoint * s;
end