function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%X2=[1;X(:,2)]
%X1=[X(1,:);X];
%y1=[y(1,:);y];
for iter = 1:num_iters
    
   theta1(1,1)=theta(1,1)-(alpha/m)*sum((X*theta)-y)
   theta1(2,1)=theta(2,1)-(alpha/m)*sum(((X*theta)-y).*X(:,2))
   %theta=theta-(alpha/m)*sum(((X1*theta)-y1).*X2)
   theta(1,1)=theta1(1,1)
   theta(2,1)=theta1(2,1)
   iter+=1;

   %print(theta);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %fprintf(J_history(iter));
  %  pause;
end