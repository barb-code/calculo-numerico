
x = .2 : .2 : .8 ; 
y = .1 : .2 : 1 ;  
passo = 0 : .1 : 1; 
fx = @(x) cos(x);
h = .1;

sumimp = sum(subs(fx,y)) ;
sumpar = sum(subs(fx,x));
fa = subs(fx,passo(1,1));
fn = subs(fx,passo(1,11));
I = double((h/3)*(fa + fn + 4*sumimp + 2*sumpar))

integral(fx,0,1)