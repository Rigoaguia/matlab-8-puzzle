% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa a descrição das ações válidas em 
% um estado do quebra-cabeça de oito peças.
% A função recebe uma matriz __Satte__ que representa um estado do jogo 
% e devolve um vetor coluna __moves__ com todas as peças que podem ser 
% movimentadas neste estado.
%
% author: raonifst at gmail dot com

function [ moves ] = legal_moves( State )

	blank_value = 9;
	adj = [0 1 0; 1 0 1; 0 1 0]; % define adjacency. 

	mask = conv2(double(State==blank_value), adj, 'same')>0; % pixels adjacent to those equal to `blank_value`
	moves = unique(State(mask));

end

