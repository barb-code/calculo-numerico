 
disp ('                                      Método de jacob')

syms x
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

d = [-1 , 0 , 0 ; 0 , -1 , 0 ; 0 , 0 , -1 ] ;

c = [-(A(1,:))/A(1,1) ; -(A(2,:))/A(2,2) ; -(A(3,:))/A(3,3) ] - d ;
g = [b(1,1)/A(1,1) ; b(2,1)/A(2,2) ;  b(3,1)/A(3,3) ] ; 

while (aux < max)
 
    
 %critérios de convergência
   
   if  alfl1 > 1
       disp('Não é possivel solucionar esse sistema. Alfa 1') 
       break
    end
    
   if alfl2 > 1
       disp('Não é possivel solucionar esse sistema. Alfa 2')  
       break
   end
    
   if alfl3 > 1
       disp('Não é possivel solucionar esse sistema. Alfa 3')
       break
  end
    
   if det (A) == 0 
        disp('Não é possivel solucionar esse sistema. Det = 0')
       break
              
   end
x = c*xz + g ;
interacoes = aux ; 
x1 = x(1,1);
x2 = x(2,1);
x3 = x(3,1);

%critério de parada
     if (abs( xz - x ) < erro)
        break
     end
     
aux = aux +1;                  
xz = x  ;

x
end
Raizes = [ 'X1' ; 'X2' ; 'X3']; Interacoes = [ '-' ; '-' ; aux] ; X = x;

table(Raizes , X, Interacoes )

    
    
