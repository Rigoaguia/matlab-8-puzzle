% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Extra: Função Octave/MATLAB que deve implementar uma nova heurística.
% A função deve receber uma matriz __S__ com um estado do quebra-cabeça 
% e devolver uma estimativa (__dist__) da quantidade de movimentos 
% necessários para se chegar no objetivo.
%
%
% author: raonifst at gmail dot com

function [ dist ] = heuristic( S ) 
dist = 0;
    for i=1:length(S)
        if i~=S(i)
            dist = dist + 1;
        end
    end
end

