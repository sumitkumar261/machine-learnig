function [theta] = normalEqn(x, y)
l=pinv((x')*x);
theta=(l*(x'))*y;