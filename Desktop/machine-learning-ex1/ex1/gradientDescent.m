function [theta,J_history] = gradientDescent(X,y,theta,alpha, n)
m = length(X);
J_history = zeros(n,1);
x=[X(:,2)];
for iter = 1:n
	h = theta(1) + theta(2)*x;
	theta(1) = theta(1) - alpha*(1/m)*sum(h.-y);
	theta(2) = theta(2) - alpha*(1/m)*sum((h.-y).*x);
	
	J_history(iter) = computeCost(X,y,theta);
end;


