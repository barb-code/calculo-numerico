function [output] = division(x,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x = [1.0 1.3 1.6 1.9 2.2 ];
y = [ 0.7651977 0.6200860 0.4554022 0.2818186 0.1103623 ];

n = length(x);
t = zeros(n);
k=1 : n;
j=1 : n;
    if j == k
      
        j = k+1;

    end
    A = y(j) - y(k);

end

