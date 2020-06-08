
function [X_norm, mu, sigma] = featureNormalize(X)
X_norm=X;
n=size(X,2);
mu=zeros(1,n);
sigma=zeros(1,n);
for i=1:n
	avg = mean(X(:, i));
	deviation = std(X(:, i));
	X_norm(:,i)=-avg;
	X_norm(:,i)=X_norm(:,i)/deviation;
	mu(i)=avg;
	sigma(i)=deviation;
end

end


