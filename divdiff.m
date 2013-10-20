function anewt = divdiff(x, y, n);
	table = zeros(n, n+1);
	table(:,1) = x';
	table(:,2) = y';
	for j = 3:n+1
		for i = j-1:n
			table(i,j) = (table(i, j-1)-table(i-1, j-1))/(table(i, 1) - table(i-(j-2), 1));
		end
	end
	anewt = zeros(0, n);
	for j=2:n+1
		for i=1:n
			if i == j-1
				anewt(i) = table(i,j);
			end
		end
	end
end
