disp('                                                            Método dos Minimos Quadrados')

disp('Insira X:')

x = input('');

disp('Insira Y:')

k = input('');

y=log(k);

n = length(x);
 
 plot(x,y,'b+:');
 
A = [  x x.^0];
 
th = pinv(A)*y; %inv(A'*A)*A'*y;
x1 = th(1,1);
x2 = exp(th(2,1));

y_ap = A*th;
hold on
plot(x, y_ap,'r')
 
e  = y - y_ap;
E = (e'*e)/n ;

table(x1,x2,E)


i = @(x) 5.7014*(exp(0.26283*x))
hold on 
ezplot(i)