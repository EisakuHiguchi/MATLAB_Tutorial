a = 0;
fa = -Inf;
b = 3;
fb = Inf;

while b-a > eps*b % 1.0から次に大きい倍精度数値までの距離を返す。eps=2^-52
    x = (a+b)/2;
    fx = x^3-2*x-5;
    if fx == 0
        break
    elseif sign(fx) == sign(fa)
        a = x;
        fa = fx;
    else
        b = x;
        fb = fx;
    end
end
print('%d',x);