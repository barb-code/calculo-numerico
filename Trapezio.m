passo = .1 : .1 : .9  ;
pas= 0 : .1 : 1;
fx = @(x) exp(x);
h = .1;

soma = double(sum(subs(fx,passo)));

x = double((h/2)*(subs(fx,pas(1,1)) + 2*soma + subs(fx,pas(1,11))))

integral(fx,0,1)