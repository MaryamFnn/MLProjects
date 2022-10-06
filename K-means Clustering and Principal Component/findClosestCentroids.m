function idx = findClosestCentroids(X,centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
%K = size(initial_centroids, 1);

% You need to return the following variables correctly.
idx = zeros(3, 1);
m=size(X,1);
s=[]
for i=1:m
  for j=1:size(centroids,1)   
    d=norm((X(i,:)-centroids(j,:)))^2
    s=[s;d]
  end
  [a1 a2]=min(s)
  idx(i)=a2
  s=[]
end
  


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

