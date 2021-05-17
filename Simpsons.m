function y = Simpsons(a, b, f)
  y = (b-a)/6*(f(a) + 4*f(a + (b-a)/2) + f(b));
end