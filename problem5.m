# Initialize known valuesx = [2 4 6 8];y = [4 8 14 16];# Initialize matrix for table representationn = zeros(4, 5);for i = 0:3 # Generate x and f(x)  n(i + 1, 1) = x(i + 1);  n(i + 1, 2) = y(i + 1);endforfor i = 2:4 # Complete each column with its delta rank  for j = 1:3 # Compute for each of the pairs    if(n(j + 1, i) == 0) # Skip unnecessary computations without (one on each level)      continue    end    n(j, i + 1) = n(j + 1, i) - n(j, i); # Compute difference between previous neighbouring values  endforendforn # Show result