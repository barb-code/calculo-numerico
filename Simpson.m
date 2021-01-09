
a = 0 ;
b = 100 ;
f = @(x) exp(x) ;

h = (b - a)/2 ; me = (b + a)/2;

I = double((h/3)*(subs(f,a) + 4*(subs(f,me)) + f(b)))

integral(f,a,b)