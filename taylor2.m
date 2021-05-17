function t = taylor2(n, x)
  if n == 0
    t = 0;
  elseif n == 1
    t = exp(x);
  else
    t = taylor2(n-1,x)-x*(n-1)/factorial(n-1);
  endif
endfunction