syms x
pont = [2.0 2.5 4.0] ;
pontf = [0.5 0.4 0.25];

format long

L0 = ((x - pont(1,2))*(x - pont(1,3)))/((pont(1,1) - pont(1,2))*(((pont(1,1) - pont(1,3)))))
L1 = ((x - pont(1,1))*(x - pont(1,3)))/((pont(1,2) - pont(1,1))*(((pont(1,2) - pont(1,3)))))
L2 = ((x - pont(1,1))*(x - pont(1,2)))/((pont(1,3) - pont(1,1))*(((pont(1,3) - pont(1,2)))))

P = pontf(1,1)*L0 + pontf(1,2)*L1 + pontf(1,3)*L2  
