function l = LP(n, x)
  if x == 1
    l = 1;
  elseif n == 1
    l = x;
  else
    l = (2*n+1)/(n+1)*x.*LP(n-1,x)-n/(n+1).*LP(n-2,x);
  endif
endfunction