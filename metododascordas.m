disp ('                                      Método da Secante')
syms x
disp ('Insira a função:');
f = input ('');
ezplot (f);
grid on
disp ('Insira o valor de x(0):') ;
xz = input ('') ;
disp ('Insira o valor de x(1):') ;
x1 = input ('') ;
disp ('Insira o valor do erro:')
erro = input ('') ; 


f = inline(f);
aux = 0;
erroab = 100 ;

while (erroab > erro)
    
     x2 = x1 - (f(x1)/(f(x1)-f(xz)))*(x1-xz);
     
     erroab = abs(((x1 - xz) / x1) * 100 ) ;
     
     xz = x1;
     
     x1 = x2;
   
     aux = aux + 1 ; 
     
     valor(aux) = x1; func(aux)= double(f(x2)) ; n(aux) = aux;
end
 fprintf('\n A raiz é : % 8.5f depois de %d interações',x1,aux) 
     
 Iteracao = (n)' ; X = (valor)';  F = (func)' ;
 table(Iteracao,X,F )
