video = VideoWriter('rollingCicl.avi');
open(video);

n = 100;

t = zeros(1, n);
for i = 1:1:n
    t(i) = (2*(i-1)*pi)/n;
end

x1 = zeros(1, n+1);
y1 = zeros(1, n+1);

for i = 1:1:n
    %equações circunferência
    x1(i) = cos(t(i));
    y1(i) = sin(t(i));
end
%para fechar a circunferência
x1(i+1) = x1(1);
y1(i+1) = y1(1);

x = [];
y = [];

for i = 1:1:n
    %equações epiciclóide completa
    x2(i) = t(i) - sin(t(i));
    y2(i) = 1 - cos(t(i));
end

for i = 1:1:n
    %equações epiciclóide
    x(i) = t(i) - sin(t(i));
    y(i) = 1 - cos(t(i));
    
    plot(x-t(i), y, 'k');
    hold on;
    plot(x(i)-t(i), y(i), 'ro');
    plot(x1, y1 + 1, 'k');
    plot(x2-t(i)-2*pi, y2, 'k');
    plot(x2-t(i)-4*pi, y2, 'k');
    axis([-10 5 0 2]);
    pbaspect([15 2 1]);
    hold off;
    pause(0.01);
    
    frame = getframe(gcf);
    writeVideo(video, frame);
end

close(video);