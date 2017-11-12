% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa a heurística de hamming.
% 
% Este arquivo não deve ser alterado.
%
% author: raonifst at gmail dot com


function [ dist ] = hamming( State )

	S = State';
	H = S(:) ~= [1:9]';
 
	dist = sum(H(:)) ;
 
	if dist > 1,
		dist = dist - 1;
	end
     
end

