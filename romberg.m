function r=romberg(f, a, b, k)
  h = b - a;
  if k == 0
    r = h/2*(f(a) + f(b));
  else
    middle = (2*[1:2^(k-1)] - 1) ./ 2^k;
    s = sum(f(a + middle .* h));
    
    prev = romberg(f, a, b, k-1);
    r = 1/2 * prev + h/2^k*s;
  end
end