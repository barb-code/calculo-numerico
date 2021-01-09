
disp ('                                      Método da Bissecção')
syms x 
disp ('Insira a função:');
f = input ('');
ezplot (f) ;  
grid on ; 
disp ('Insira o valor do intervalo inferior:') ;
intinf = input ('') ; 
disp ('Insira o valordo intervalo superior:') ;
intsup = input('') ; 
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o número de operações:') ; 
max = input('') ; 
cond1 = subs(f,intinf)*subs(f,intsup) ;
aux = 0;
pos = +1;
    
while (aux < max)
    
      if cond1 > 0
        disp('Não existe raiz dentro desse intervalo.')
        break
      end
    
    
 x = (intinf + intsup)/2; 
  
   if ( subs(f,x) == 0 || (intsup - intinf) < erro ) 
       fprintf('\n A raiz é : % 1.5f depois de %d interações', x , aux) ; 
       break       
   end
      aux = aux + 1;
      
      if sign (subs(f,x)) == sign (subs(f,intinf))
          intinf = x;
      else
          intsup = x;
      end
 interacoes(aux) = aux ;
 valordex(aux)= x;
 funcaoemx(aux) = double(subs(f,x));
 
  Iteracao = (interacoes)' ; X = (valordex)' ; F = (funcaoemx)' ;


 
end
table(Iteracao , X, F)
