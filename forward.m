function [A] = forward (A,b,n)
for c = 1 : n
	A(c,n+1)=b(c);
end
endfunction
