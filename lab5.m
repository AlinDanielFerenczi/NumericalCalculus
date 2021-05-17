clc; clear;
# Problem 1
t = [0 3 5 8 13];
d = [0 225 383 623 993];
v = [75 77 80 74 72];
x = [10];

sol1 = HermitePol(t,d,v,x)

# Problem 2

t = [1 2];
d = [0 0.6931];
v = [1 0.5];
x = [1.5];

sol2 = HermitePol(t,d,v,x)
err = abs(log(1.5)-sol2)

# Problem 3

t = linspace(-5,5,15);
d = sin(2*t);
v = 2*cos(2*t);
xf = -5:.01:5;
xx = -5:.1:5;

hold on
scatter(xx, HermitePol(t, d, v, xx));
plot(xf, sin(2*xf), 'Color', 'b');
#plot(xf, HermitePol(t, d, v, xf), 'Color', 'r');