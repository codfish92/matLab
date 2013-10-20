function y = polyeval(xPoint, anewt, x, n)
	y = anewt(1); 
	product = 1;
	for i = 2:n
		product = product * (xPoint - x(i-1));
		y = y + anewt(i)*product;
	end
end
