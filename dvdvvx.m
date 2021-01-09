x0 = 0;
xf = 1;

y0 = 1;

n = 5000;
deltaX = (xf - x0)/(n-1);

% y' = y => y = e^x
x(1) = x0;
y(1) = y0;

for i = 1: n-1
    y(i+1) = y(i) + deltaX * y(i);
    x(i+1) = x(i) + deltaX;
end

yEx = exp(x);

erro = (y(end) - yEx(end)) / yEx(end)

plot(x, y, x, yEx);
xlim([0, 1]);
legend('Numérico', 'Exato');
grid on;