function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
n=size(centroids,2);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
dist=0;
for(i=1:rows(X))
min_dist=99999;
for(j=1:rows(centroids))
for(l=1:n)
dist=dist+power((X(i,l)-centroids(j,l)),2);
endfor
if(dist<=min_dist)
min_dist=dist;
idx(i)=j;
endif
dist=0;
endfor
endfor
% =============================================================
end

