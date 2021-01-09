
disp('Insira o valor de a');
a = input('');
disp('Insira o valor de b');
b = input('');
disp('Insira o valor de n');
n = input('');

intpar = a+n: 2*n : b-n ;
intimpar = a+2*n: 2*n : b-2*n;

f = @(x) (sin(x) + x*x)/((x+3)^2);

sumimp = sum(subs(f,intpar)) ;
sumpar = sum(subs(f,intimpar));


I = double((n/3)*(subs(f,a) + subs(f,b) + 4*sumimp + 2*sumpar))