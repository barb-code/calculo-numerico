
disp ('Insira a fun��o:');
f = input ('','s');
disp ('Inserir x(0):') ;
x0 = input ('') ; 
disp ('Insira o valor do erro:')
erro = input ('') ; 
disp ('Insira o n�mero de opera��es:') ; 
max = input('') ; 

aux = 1 ;
while aux < max
    x = (x0 - (sub(f,x0)/ diff(sub (f,x0))))
    
    if 
        fprintf('A raiz � : %d', x)
        
    end