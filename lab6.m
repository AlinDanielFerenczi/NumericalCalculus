# Problem 1
# a

x = [0, pi/2, pi, 3*pi/2, 2*pi];
y = sin(x);

ns = spline(x, y);
cs = spline(x, [1 y 1]);

val_of_function = sin(pi/4)
cubic_natural_spline = ppval(ns, pi/4)
cubic_clamped_spline = ppval(cs, pi/4)

# b
figure(1)
xx = 0:.25:6;
hold on

yy = spline(x,y,xx);
plot(x,y,xx,yy);

yy = spline(x,[1 y 1],xx);
plot(x,y,xx,yy);

# Problem 3
figure(2)
x = 0: pi/4 : 2*pi;
y = cos(x);

yy = interp1(x,y, xx, "linear");
plot(x,y, 'o', xx, yy);

# Problem 2

[x, y] = ginput(5);
figure(3)
legend("natural", "clamped");
yy = spline(x,y,xx);
plot(x,y, 'o', xx, yy);