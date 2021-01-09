disp ('                                      M�todo de Newton')
syms x

disp ('Insira a fun��o:');
f = input ('');
df = diff(f) ;
df2 = diff(df);
ezplot (f) ; hold on ; ezplot(df) ; grid on;
disp ('Insira o valor de x(0):') ;
xz = input ('') ; 
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o n�mero de opera��es:') ; 
max = input('') ; 

aux = 0;

while (max > aux)
        
    if df*df2 == 0 
        disp('N�o existe raiz dentro desse intervalo.')
        break
    end
    
    xi = xz - (subs(f,xz)/subs(df,xz));
   
    aux = aux + 1; 
    
    if (xi - xz) == 0 
        break
    else xz = xi ;
      
    end
      
    valor(aux) = xz; func(aux)= double(subs(f,xz)) ; n(aux) = aux;
    
end
 fprintf('\n A raiz � : % 8.5f depois de %d intera��es',xz,aux) 

 
Iteracao = (n)' ; X = (valor)';  F = (func)' ;
 table(Iteracao,X,F )

     
