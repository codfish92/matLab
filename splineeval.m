function y = splineeval(xPoint, a, b, c, d, x, n)
	i = 1;
	while xPoint > x(i);
		i = i+1;
	end
	i = i -1; %readjust index, so we actually call the coefeicents of proper spline
	y = a(i) + b(i)*(xPoint - x(i)) + c(i)*(xPoint - x(i))^2 + d(i)*(xPoint - x(i))^3;
end
