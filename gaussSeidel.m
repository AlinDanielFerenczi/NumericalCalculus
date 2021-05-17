function gaussSeidel(A, b, N, eps)
  [m,n]=size(A);

  xJ_old=zeros(m,1);
  xJ_new=xJ_old;
  nr_it=0;
  while nr_it<=N
    nr_it=nr_it+1;
    
    for i=1:m
      firstSum = 0;
      secondSum = 0;
      for j=1:i-1
        firstSum = firstSum + (A(i, j) * xJ_new(j, 1));
      endfor
      for j=i+1:m
        secondSum = secondSum + (A(i, j) * xJ_old(j, 1));
      endfor
      xJ_new(i)=(b(i) - firstSum - secondSum)/A(i,i); 
    end
    
    if abs(xJ_new-xJ_old)<eps
      fprintf('Gauss-Seidel ')
      fprintf('Solutia x este:\n')
      disp(xJ_new)
      fprintf('Numarul de iteratii:%d\n',nr_it)
      return
    end
   
    xJ_old=xJ_new;
  end
  disp('Numarul de iteratii a fost depasit')
  
endfunction