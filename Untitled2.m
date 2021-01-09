disp ('                                      Método de Newton')
syms x
disp ('Insira a função:');
f = input ('');
disp ('Insira o valor de x(0)') ;
xz = input ('') ;
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o número de operações:') ; 
max = input('') ;
ezplot (f)
grid on 
df = diff(f) ;
df = inline(df); 
f = inline(f);
aux = 0;
while ( max > erro)
    2*
     xi = xz - (f(xz)/df(xz));
     
     xz = xi;
   
     aux = aux + 1 ; 
end
 fprintf('\n A raiz é : % 8.5f depois de %d interações',xz,aux) 
     
