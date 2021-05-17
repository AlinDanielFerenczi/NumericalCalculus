function jacobi(A, b, N, eps)
  [m,n]=size(A);

  xJ_old=zeros(m,1);
  xJ_new=xJ_old;
  nr_it=0;
  while nr_it<=N
    for i=1:m
      xJ_new(i)=(b(i)-A(i,[1:i-1,i+1:m])*(xJ_old([1:i-1,i+1:m],1)))/A(i,i); 
    end
    
    nr_it=nr_it+1;
    
    if abs(xJ_new-xJ_old)<eps
      fprintf('Jacobi ')
      fprintf('Solutia x este:\n')
      disp(xJ_new)
      fprintf('Numarul de iteratii:%d\n',nr_it)
      return
    end
   
    xJ_old=xJ_new;
  end
  disp('Numarul de iteratii a fost depasit')
  
endfunction