function s = compare(x,y)
	[m n] = size(x);

	anewt = divdiff(x, y, n);

	[a b c d] spliney(x, y, n);

	xplot = linspace(-5, 5, 100);

	yplot1 = zeros(100, 1);
	yplot2 = zeros(100, 1);


	for i = 1:100
		yplot1(i)=polyeval(xplot(i), anewt, x, n);

		yplot2(i) = splineeval(xplot(i), a, b, c, d, x, n);



end


