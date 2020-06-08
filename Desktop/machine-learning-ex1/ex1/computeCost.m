function j = computeCost(X,y, theta);
x=[X(:,2)];
m = length(x);
h = theta(1) + theta(2)*x;
j = (1/(2*m))*(sum((h.-y).^2));
