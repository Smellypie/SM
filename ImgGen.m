n = 1000;

t = zeros(1, n);
for i = 1:1:n
    t(i) = (2*(i-1)*pi)/n;
end

x1 = [];
y1 = [];
for i = 1:1:n %curva1
    x1(i) = 2.5*sin(t(i));
    y1(i) = 2.5*cos(t(i));
end
x1(i+1) = x1(1);
y1(i+1) = y1(1);

x4 = [];
y4 = [];
for i = 1:1:n %curva1
    x4(i) = 0.5*sin(t(i));
    y4(i) = 0.5*cos(t(i));
end
x4(i+1) = x4(1);
y4(i+1) = y4(1);

x2 = [];
y2 = [];
for i = 1:1:170 %curva2
    x2(i) = 2*sin(t(i)) - 0.5*sin((2/0.5).*t(i));
    y2(i) = 2*cos(t(i)) + 0.5*cos((2/0.5).*t(i));
end

x3 = [0 0];
y3 = [-10 10];


%...

%plots
hold on;
plot(x1, y1, 'k');
plot(x2, y2, 'k');
% plot(x3, y3, 'k');
% plot(y3, x3, 'k');
plot(x4*cos(t(170)) + (y4+2)*sin(t(170)), (y4+2)*cos(t(170)) - x4*sin(t(170)), 'k');
plot(x2(170), y2(170), 'ro');

axis off;
axis([-3 3 -3 3]);
pbaspect([1 1 1]);