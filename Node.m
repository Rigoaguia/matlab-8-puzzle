% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Classe Octave/MATLAB que implementa a descrição dos nós de busca.
%
% Cada nó de contém uma referência para o nó que o descobriu (i.e., nó visitado
% no passo anterior), o estado atual (i.e., configuração da matriz) e 
% o número de movimentos feitos até o momento. 
%
% Para criar um novo nó de busca n faça:
% 
% n = Node(State, cost);
%
% em que State e cost correspondem, respectivamente, ao estado e ao custo
% do nó. O custo do nó é igual ao número de passos efetivamente percorridos
% pelo algoritmo até sua descoberta (i.e., o custo de um nó não-raiz é
% 1 (um) mais o custo do nó que descobriu).
%
% A instrução a seguir indica que o nó n foi descoberto pelo nó p.
%
% n.Prev = p;
%
% author: raonifst at gmail dot com


classdef Node < handle
    
    properties (GetAccess = public, SetAccess = public)
        State;
        f = 0;      
        Prev ;        
    end
    
    methods
        
        function self = Node(M, g) 
                       
            self.State = M;
            self.f = g;
            
        end
               
        function[out] = get.State(self)
            out = self.State;
        end
        
        function[out] = get.Prev(self)
            out = self.Prev;
        end
        
        function[out] = get.f(self)
            out = self.f;
        end
        
        function[out] = eq(obj,obj2) 
            if length(obj2) > 1
               throw(MException('Node:eqMultiple','??? Cannot compare to multiple elements at once.'))
            end   
            out = strcmp(class(obj),class(obj2)) &&  sum(sum(obj.State == obj2.State)) == 9;   % obj2 must be of the same class
        end
        
                 
        function[out] = gt(obj,obj2) 
            if length(obj2) > 1
               throw(MException('Node:gtMultiple','??? Cannot compare to multiple elements at once.'))
            end  
            global option;
            
            if option == 1,            
              out = isa(obj2,'Node') && obj.f + hamming(obj.State) < obj2.f+hamming(obj2.State);
            else 
                out = isa(obj2,'Node') && obj.f + manhattan(obj.State) < obj2.f+manhattan(obj2.State);
            end
        end
        
    end
    
end
