classdef RBTElement < handle

%
% A class that implements pass by reference elements with numeric keys for
% instances of the RedBlackTree class
%
% NOTE: This class is used internally by the RedBlackTree class
%

    %
    % Public properties
    %
	properties (Access = public)
		key;            % key
        id;
        left = nan;       % left child
        right = nan;    % right child
        p = nan;        % parent
        color = false;  % color (true = red,false = black)
        size = 0;       % size of subtree rooted at this element
        value = [];     % miscellaneous data
    end
    
    %
    % Public methods
    %
	methods (Access = public)
        %
        % Constructor
        %
		function this = RBTElement(key,value)
    
          global id;
			% Initialize key
            this.key = key;
            this.id = id;
            id = id + 1;
            % Set value data, if specified
            if (nargin == 2)
                this.value = value;
            end
        end
        
        %
        % Element is nan if its key is nan
        %
        function bool = isnan(this)
            bool = isnan(this.key);
        end
        
       
        function[bool] = eq(this, obj)
            bool = this.id == obj.id;
        end
        
        function[bool] = ne(this, obj)
            bool = this.id ~= obj.id;
        end
    end
    
     
end
