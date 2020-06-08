function [theta,jhistory] = gradientDescentMulti(x,y,theta,alpha, n)
m = length(y);
jhistory = zeros(n,1);
for iter = 1:n
    h = x*theta;
    theta = theta - alpha*(1/m)*(x'*(h-y));
    
    jhistory(iter) = computeCostMulti(x,y,theta);
end;

end;


