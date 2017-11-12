% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% InteligÃªncia Artificial - 2017/2

% A função abaixo verifica o número de inversões é par ou ímpar, se o
% número de inversões for para is solvable, senão unsolvable.


function [s] = issolvable(m)
%m= [9 1 3; 2 4 5; 7 8 6];
m = m';
m = m(:);
m(m==9)=0;
inv = 0;

for i=1:length(m)
    if m(i) > 0 
        inv = inv + size(find(find(m>m(i)) > i),1);
    end 
end
    if(mod(inv,2) == 0)
        s = false;
    else
        s = true;
    end
   
end
%inv