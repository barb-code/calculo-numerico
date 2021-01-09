   disp ('                                      Método da Bissecção')
syms x 
syms e
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
    
while (aux < max )
    
      if cond1 > 0
        disp('Não existe raiz dentro desse intervalo.')
        break
      end
    
    
 e = (intinf + intsup)/2; 
  
   if ( subs(f,e) == 0 || (intsup - intinf) < erro ) 
       fprintf('\n A raiz é : % 1.5f depois de %d interações', e , aux) ; 
       break       
   end
      aux = aux + 1;
      
      if sign (subs(f,e)) == sign (subs(f,intinf))
          intinf = e;
      else
          intsup = e;
      end

end

