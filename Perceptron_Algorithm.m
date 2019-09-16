% Original Perceptron Algorithm

function [w] = Perceptron_Algorithm(X, Y)
    
    % Initialize the perpendicular hyperplane vector
    w = 0;

    % Get the dimension of data points
    k = size(X,1);
    
    [w] = Recursive_Procedure(X, Y, k, w);
    
    function [w] = Recursive_Procedure(X, Y, k, w)
        for i = 1:k
            if Y(i,1) ~= sign((w * (X(i, :))'))
                w = w + Y(i) * X(i, :);
                w = Recursive_Procedure(X, Y, k, w);
            end
            
            break;
        end
        
     
        
    end
end