%definição
n = 5000;
%para epitrocoides fazer m != 1
m = 3;

% raios interiores (p)
% a = [7 13 59 72 131 334 465];
% raios exteriores (q)
% b = [6 7 13 59 72 131 334];

a = [1];
b = [1];

%e
% a = [3 8 11 19 87 106 193];
% b = [1 3 4 7 32 39 71];

%phi
% a = [3 5 8 13 21 34 55];
% b = [2 3 5 8 13  21 34];

%sqrt(2)
% a = [3 7 17 41 99];
% b = [2 5 12 29 70];

for j = 1:1:length(b)
    for i = 1:1:n
        for k = 1:1:n
            t(k) = (2*b(j)*k*pi)/n;
        end
        %equações epiciclóide
        x(i) = (a(j) + b(j))*sin(t(i)) - m*b(j)*sin(((a(j) + b(j))/b(j)).*t(i));
        y(i) = (a(j) + b(j))*cos(t(i)) - m*b(j)*cos(((a(j) + b(j))/b(j)).*t(i));
        %equações hipociclóide
%         x2(i) = (a(j) - b(j))*sin(t(i)) - b(j)*sin(((b(j) - a(j))/b(j)).*t(i));
%         y2(i) = (a(j) - b(j))*cos(t(i)) - b(j)*cos(((b(j) - a(j))/b(j)).*t(i));
    end
    
    plot(x, y, 'color', [0.4, 0.4, 0.4]);
    hold on;
    %plot(x2, y2, 'color', [0.4, 0.4, 0.4]);
end
