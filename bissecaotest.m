   disp ('                                      M�todo da Bissec��o')
syms x 
syms e
disp ('Insira a fun��o:');
f = input ('');
ezplot (f) ;  
grid on ; 
disp ('Insira o valor do intervalo inferior:') ;
intinf = input ('') ; 
disp ('Insira o valordo intervalo superior:') ;
intsup = input('') ; 
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o n�mero de opera��es:') ; 
max = input('') ; 
cond1 = subs(f,intinf)*subs(f,intsup) ;
aux = 0;
    
while (aux < max )
    
      if cond1 > 0
        disp('N�o existe raiz dentro desse intervalo.')
        break
      end
    
    
 e = (intinf + intsup)/2; 
  
   if ( subs(f,e) == 0 || (intsup - intinf) < erro ) 
       fprintf('\n A raiz � : % 1.5f depois de %d intera��es', e , aux) ; 
       break       
   end
      aux = aux + 1;
      
      if sign (subs(f,e)) == sign (subs(f,intinf))
          intinf = e;
      else
          intsup = e;
      end

end

