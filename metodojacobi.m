disp ('                                      Método de Gauss-jacob')

disp ('Insira a matriz A:');
A = input ('');
disp ('Insira a matriz b:');
b = input('') ; 
disp ('insira o vetor X(0):');
xz = input('') ; 
disp ('Insira o valor do erro:');
erro = input ('') ; 
disp ('Insira o número de operações:') ; 
max = input('') ; 
aux = 0 ;
alfl1 = (A(1,2) + A(1,3))/A(1,1) ; 
alfl2 = (A(2,1) + A(2,3))/A(2,2) ;
alfl3 = (A(3,1) + A(3,2))/A(3,3) ; 

c = [-(A(1,:))/A(1,1) ; -(A(2,:))/A(2,2) ; -(A(3,:))/A(3,3)] ; 
g = [b(1,1)/A(1,1) ; b(2,1)/A(2,2) ;  b(3,1)/A(3,3) ] ; 

while ( aux < max)
 %critérios de convergência
    if  alfl1 < 1
        break
    end
    
         if alfl2 < 1
             break
         end
    
                 if alfl3 < 1
                     break
                 end
    
                       if det (A) == 0 
                              break
               
                       end
                       
    aux = aux +1
    
    x = c*xz + g ; 
    
    xz = x ; 
    
    if (abs( xz - x ) == erro)
        disp(' Os valores de x1, x2 e x3 são : %1.5' xz , 
        
    
end
    
    
    
    
