disp('Insira o valor de a');
a = input('');
disp('Insira o valor de b');
b = input('');
disp('Insira o valor de n');
n = input('');
 

int = a + n  : n : b-n


f = @(x) (sin(x) + x*x)/((x+3)^2);

soma = sum(subs(f,int));

I = double((n/2)*(subs(f,a) + 2*soma + subs(f,b)))

