# Problem 1
a = 0; b = 1;
format long

f = @(x) 2./(1+x.^2);

Int = integral(f, a, b)

# using trapezium formula:
I_trapez = (b-a)/2*(f(a)+f(b))
# n - total number of steps

I_simpsons = (b-a)/6*(f(a)+4*f((a+b)/2)+f(b))
figure(1)
fplot(f, [a,b]);
hold on
fill([0,0,1,1], [0, f(0), f(1), 0], 'r');

# Problem 2
a = 1.4
b = 2
c = 1
d = 1.5
f = @(x, y) log(x+2*y);

left = ((b-a) * (d-c)) / 16;
simple = f(a,c) + f(a,d) + f(b,c) + f(b,d);
double = f((a+b)/2, c) + f((a+b)/2, d) + f(a, (c+d)/2) + f(b, (c+d)/2);
last = f((a+b)/2, (c+d)/2);
I_repeated = left * (simple + 2*double + 4*last)

# Problem 3
a = 0; b = 2*pi;
r = 110;
p = 75;
f = @(x) (1-((p/r).^2)*sin(x)).^0.5;

I_trapez_p3_1 = repeatedTrapezium(a,b,f,2);
H1 = 60*r/(r^2-p^2)*I_trapez_p3_1

I_trapez_p3_2 = repeatedTrapezium(a,b,f,3);
H2 = 60*r/(r^2-p^2)*I_trapez_p3_2

# Problem 4
a = 1; b = 2;
f = @(x) x.*log(x);
n = 0;

do
  n = n+1;
  result = repeatedTrapezium(a,b,f,n);
until ((result < 0.637) && (result > 0.636))

n
threeDecimals = repeatedTrapezium(a,b,f,n)

# Problem 5
a = 0; b = pi;
f = @(x) 1./(4+sin(20.*x));

forN10 = repeatedSimpsons(f, a, b, 10) # calculate for n = 10
forN30 = repeatedSimpsons(f, a, b, 30) # calculate for n = 30

# Problem 6
val = erf(0.5)
a = 0; b = 0.5;
f = @(t) e.^(-t.^2);
const = 2 / sqrt(pi);

erfN4 = const * repeatedSimpsons(f, a, b, 4); # calculate for n = 4
erfN10 = const * repeatedSimpsons(f, a, b, 10); # calculate for n = 10

err1 = abs(val - erfN4) # calculate difference from n = 4 until expected value
err2 = abs(val - erfN10) # calculate difference from n = 10 until expected value 