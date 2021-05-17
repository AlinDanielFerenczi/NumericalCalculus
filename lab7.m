clear;clc;
# Problem 1
figure(1)
x = 1:7;
f = [13, 15, 20, 14, 15, 13, 10];

X = [sum(x.^2), sum(x); sum(x), length(x)];
Y = [sum(x.*f); sum(f)];

A = linsolve(X, Y);

fprintf('phi(x)=%f x + %f\n', A)

v = polyval(A,8)

p = polyfit(x,f,1)
v2 = polyval(p,8)

E_min = sum((f-polyval(p, x)).^2)

plot(x, f, 'bo');
hold on
xp = 1:.01:8;
plot(xp, polyval(p,xp), 'r-');

# Problem 2

x = [0, 10, 20, 30, 40 , 60, 80, 100];
f = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

p1 = polyfit(x, f, 2);
p2 = polyfit(x, f, 4);

v1 = polyval(p1, 45)
v2 = polyval(p2, 45)

real = 0.095848;

e1 = abs(v1 - real)
e2 = abs(v2 - real)

figure(2)
plot(x, f, 'bo');
hold on
xp = 0:.1:100;
plot(xp, polyval(p1,xp), 'r-');
plot(xp, polyval(p2,xp), 'g-');

# Problem 3
figure(3)
rectangle('Position', [0,0,3,5]);
[x, f] = ginput(10);
p = polyfit(x, f, 2);
xp = 0:.01:5;
plot(x, f, 'bo');
hold on
plot(xp, polyval(p,xp), 'r-');