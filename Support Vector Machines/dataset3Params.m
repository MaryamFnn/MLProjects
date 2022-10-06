function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C = 1;
%sigma = 0.3;
C1=[1,3,9,27]
sigma1=[.1,.3,1,3]
error=zeros(3,3)
for i=1:3
  for j=1:3
    
      C2=C1(i);
      sigma2=sigma1(j);
      model= svmTrain(X, y, C2, @(x1, x2) gaussianKernel(x1, x2, sigma2));   
      predictions = svmPredict(model, Xval);
      error(i,j)=mean(double(predictions ~= yval));
      
  end
end
[s1,s2]=min(error);
[e1,e2]=min(s1);
C=C1(e2);
sigma=sigma1(s2(e2));
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
