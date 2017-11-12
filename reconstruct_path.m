% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que mostra o caminho percorrido em solução do quebra-cabeça.
% A função recebe um nó de busca __node__ e mostra o caminho percorrido.
%
% author: raonifst at gmail dot com

function reconstruct_path( node )
    
    if ~isempty(node),	
        if isempty(node.Prev),
            show(node.State);
        else
            reconstruct_path(node.Prev);
            show(node.State);
        end
    end
end

