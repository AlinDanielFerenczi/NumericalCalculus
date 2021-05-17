x=0:.01:1;

# Problem 1
l1 = x;
l2 = 3/2 * x.^2 - 1/2 * x;
l3 = 5/2 * x.^3 - 3/2 * x;
l4 = 35/8 * x.^4 - 15/4 * x.^2 + 3/8;
figure('Name', 'Problem 1');
subplot(2,2,1);
plot(x, l1);
subplot(2,2,2);
plot(x, l2);
subplot(2,2,3);
plot(x, l3);
subplot(2,2,4);
plot(x, l4);

# Problem 1 recurrent
figure('Name', 'Problem 1 recurrent');
for n = 1:4
  l = LP(n,x);
  subplot(2,2,n);
  plot(x,l);
end

x=-1:.01:1;
# Problem 2
figure('Name', 'Problem 2');
t1 = cos(acos(x));
t2 = cos(2*acos(x));
t3 = cos(3*acos(x));
subplot(2,2,1);
plot(x, t1);
subplot(2,2,2);
plot(x, t2);
subplot(2,2,3);
plot(x, t3);

# Problem 2 recurrent
hold on
figure('Name', 'Problem 2 recurrent');
for n = 1:3
  l = TC(n,x);
  subplot(2,2,n);
  plot(x,l);
end

x=-1:.01:3;
# Problem 3 recurrent
figure('Name', 'Problem 3 recurrent');
for n = 1:6
  t = taylor2(n,x);
  subplot(3,3,n);
  plot(x,t);
end

M = zeros(7,7);
i = 0:6