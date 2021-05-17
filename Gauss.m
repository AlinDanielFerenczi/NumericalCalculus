function x = Gauss(n, A, b)
  s = [];
  p = [];
  x = [];
  
  for i = 1:n
    s(i) = 0;
    for j = 1:n
      s(i) = max(s(i), abs(A(i, j)));
    endfor
    p(i) = i;
  endfor
  
  for k = 1:(n-1)
    rmax = 0;
    
    for i = k:n
      r = abs(A(p(i), k) / s(p(i)));
      if (r > rmax)
        rmax = r;
        j = i;
      endif
    endfor
    
    temp = p(k);
    p(k) = p(j);
    p(j) = temp;
    
    for i = (k+1):n
      A(p(i), k) = A(p(i), k) / A(p(k), k);
      for j = k+1:n
        A(p(i), j) = A(p(i), j) - A(p(i), k) * A(p(k), j);
      endfor
    endfor
  endfor
  
  for k = 1:(n-1)
    for i = (k + 1):n
      b(p(i)) = b(p(i)) - A(p(i), k) * b(p(k));
    endfor
  endfor
  
  for i = n:-1:1
    s = b(p(i));
    
    for j = (i + 1):n
      s = s - A(p(i), j) * x(j);
    endfor
    
    x(i) = s / A(p(i), i);
  endfor
endfunction