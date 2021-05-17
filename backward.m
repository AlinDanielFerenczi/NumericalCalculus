function [ x ] = backward (h,n)
x(n)= h(n, n+1)/h(n,n);
for i=n-1:-1:1
	acum = 0; 
	for p = i+1:n
		acum = acum + (h(i,p)*x(p));
	end
	x(i)= (h(i, n + 1) - acum)/h(i, i);
end
endfunction