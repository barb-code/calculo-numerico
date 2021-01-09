
disp ('Insira a função:');
f = input ('','s');
disp ('Inserir x(0):') ;
x0 = input ('') ; 
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o número de operações:') ; 
max = input('') ; 

aux = 1 ;
while aux < max
    x = (x0 - (sub(f,x0)/ diff(sub (f,x0))))
    
    if 
        fprintf('A raiz é : %d', x)
        
    end