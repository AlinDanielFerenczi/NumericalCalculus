clear; clc; format long;

# Problem 1
a = 1;
b = 1.5;
x = [a:0.001:b];

# a
f = @(x) exp(-x .^ 2);
aprox_rectangle_formula = (b-a)*f((a+b)/2)

# b
hold on;
axis([a b f(b) f(a)])
plot(x, f(x), 'Color', 'r');
rectangle('Position', [a 0 b f((a + b)/ 2)], 'FaceColor', [0 .5 .5]);
legend('f(x)', 'rectangle');

# c
aprox_repeated_rectangel_150 = repeatedRectangel(f, a, b, 150)
aprox_repeated_rectangel_500 = repeatedRectangel(f, a, b, 500)

# Problem 2

a = 0;
b = 1;
f = @(x) 2 ./ (1 + x .^ 2);
err = 1e-4;
expected = pi/2;

n = 1;
rmb = romberg(f, a, b, n);

while abs(rmb - expected) >= err
  n = n + 1;
  rmb = romberg(f, a, b, n);
end

step = n
err_romberg = rmb - expected
aprox_romberg = rmb

# Problem 3
format long;

a = 1;
b = 3;
err = 1e-4;

true_value = -1.4260247818;

f = @(x) 100 ./ x .^2 .* sin(10 ./ x);

n1 = 50;
n2 = 100;

adaptive_quad = adaptiveQuad(f, a, b, err)
simpson_n1 = repeatedSimpsons(f, a, b, n1);
simpson_n2 = repeatedSimpsons(f, a, b, n2);

err_adaptive_quad =  abs(true_value - adaptive_quad)
err_simpson_n1 = abs(true_value - simpson_n1)
err_simpson_n2 = abs(true_value - simpson_n2)