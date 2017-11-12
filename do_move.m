% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa o modelo de transição do
% quebra-cabeça de oito peças.
% A função recebe uma matriz __M__ que representa um estado do jogo 
% e uma peça __p_value__ a ser movimentada e devolve uma nova matriz 
% __nM__ com o estado do jogo após a movimentação.
%
% Uma execução da função para 
%
% S = [4 1 3; 9 2 5; 7 8 6];
% p_value = 2;
%
% por exemplo, devolve o estado:
%
% [4 1 3; 2 9 5; 7 8 6]; 
%
% author: raonifst at gmail dot com


function [ nM ] = do_move( M, p_value )

	blank_value = 9;
	p = find(M == p_value);
	blank_p = find(M == blank_value);

	nM = M;
	nM(p) = M(blank_p);
	nM(blank_p) = M(p);


end

