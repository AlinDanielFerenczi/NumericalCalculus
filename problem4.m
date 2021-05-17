h = 0.25; # Initialize constant
n = zeros(7, 8); # Initialize matrix for table representation

for i = 0:6 # Generate x and f(x)
  xi = 1 + i * h;
  n(i + 1, 1) = xi;
  n(i + 1, 2) = sqrt(5 * xi .^ 2 + 1);
endfor

for i = 2:7 # Complete each column with its delta rank
  for j = 1:6 # Compute for each of the pairs
    if(n(j + 1, i) == 0) # Skip unnecessary computations without (one on each level)
      continue
    end
    n(j, i + 1) = (n(j + 1, i) - n(j, i))/(x(i+j-1) - x(i)); # Compute difference between previous neighbouring values
  endfor
endfor

n # Show result