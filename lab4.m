# Problem 1

x = [1 1.5 2 3 4];
f = [0 0.17609 0.30103 0.47712 0.60206];
xx = [2.5, 3.25];

NewtonPol(x, f, xx)

N = zeros(1, 25);
y = zeros(1, 25);

for i = 10:35
  y(i - 9) = i/10;
  N(i - 9) = NewtonPol(x, f, y(i - 9));
end

E = max(abs(log10(y) - N))

# Problem 2
figure(1)

x = [1 2 3 4 5];
f = [22 23 25 30 28];

NewtonPol(x, f, 2.5)

hold on

xx = 0:.01:6;
newton = NewtonPol(x, f, xx);

scatter(x, f);
plot(xx, newton, 'Color', 'b');

# Problem 3
figure(2)

x = linspace(0, 6, 13);
f = exp(sin(x));
xf = 0:.01:6;

hold on
scatter(x, f);
plot(xf, exp(sin(xf)), 'Color', 'b');
plot(xf, NewtonPol(x, f, xx), 'Color', 'r');

# Problem 4

x = [64, 81, 100, 121, 144, 169, 196, 225];
y = [8, 9, 10, 11, 12, 13, 14, 15];

AitkenPol(x, y, 115)