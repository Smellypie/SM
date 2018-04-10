format long;

%v = [1 2 3 4 5];

%e
%v = [2 1 2 1 1 4 1 1 6 1 1 8 1 1 16];

%sqrt(2)
v = [1 2 2 2 2 2 2 2 2 2 2 2 2 2 2];

%phi
%v = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

n = length(v);

p = zeros(1, n - 1);
q = zeros(1, n - 1);
erro = zeros(1, n - 1);

for k = n:-1:2
    p(1) = v(k-1)*v(k) + 1;
    q(1) = v(k);

    for i = 2:1:k-1
        p(i) = v(k-i)*p(i - 1) + q(i - 1);
        q(i) = p(i - 1);
    end
    
    %sqrt(2)<e<phi(velocidade de convergencia)
    %erro(n-k+1) = abs(sqrt(2) - (p(n-k+1)/q(n-k+1)));
    %erro(n-k+1) = abs(exp(1) - (p(n-k+1)/q(n-k+1)));
    erro(n-k+1) = abs((1+sqrt(5))/2 - (p(n-k+1)/q(n-k+1)));
end

erro
%p./q