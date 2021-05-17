function relaxation(A, b, N, eps, w)
  [m,n]=size(A);

  xJ_old=zeros(m,1);
  xJ_new=xJ_old;
  nr_it=0;
  while nr_it<=N
    for i=1:m
      firstSum = 0;
      secondSum = 0;
      for j=1:i-1
        firstSum = firstSum + (A(i, j) * xJ_new(j, 1));
      endfor
      for j=i+1:m
        secondSum = secondSum + (A(i, j) * xJ_old(j,1));
      endfor
      xJ_new(i)=w*(b(i) - firstSum - secondSum)/A(i,i) + (1-w)*xJ_old(i,1);
    end
    
    nr_it=nr_it+1;
    
    if abs(xJ_new-xJ_old)<eps
      fprintf('Relaxation ');
      fprintf('Solutia x este:\n')
      disp(xJ_new)
      fprintf('Numarul de iteratii:%d\n',nr_it)
      return
    end
   
    xJ_old=xJ_new;
  end
  disp('Numarul de iteratii a fost depasit')
  
endfunction