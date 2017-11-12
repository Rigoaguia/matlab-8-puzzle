% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2017/2

% A fun��o abaixo calcula a dist�ncia Euclidiana. 
function [dist] = euclidiana(State)

O = [1,2,3;4,5,6;7,8,9];
dist = 0;
	for i=1:8
		[Ol,Oc] = find(O==i);
        [Sl,Sc] = find(State==i);
        dist = dist + sqrt((Sl-Ol)^2 + (Sc-Oc)^2);
	end

end
