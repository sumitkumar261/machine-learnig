function j = computCost(x,y, theta);
m = length(y);
h = x*theta;
j = (1/(2*m))*(sum((h.-y).^2));
