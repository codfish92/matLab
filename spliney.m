function [a b c d] = spliney(x, y, n)
	a = zeros(n, 1);
	b = zeros(n, 1);
	c = zeros(n, 1);
	d = zeros(n, 1);
	h = zeros(n, 1);
	A = zeros(n);
	B = zeros(n, 1); %normally the b, but want lowercase b for b coeiffecents. 
	for i = 1:n
		a(i) = y(i);
		if i ~= n
			h(i) = x(i+1)-x(i);	
		end
	end
	A(1, 1) = 1;
	B(1) = 0;
	B(n) = 0;
	A(n, n) = 1;
	for i = 2:n-1
		A(i, i-1) = h(i-1);
		A(i, i) = 2*(h(i-1)+h(i));
		A(i, i+1) = h(i);
		B(i) = (3/h(i))*(a(i+1)-a(i)) - (3/h(i-1))*(a(i)-a(i-1));
	end
	c = A\B;
	for i = 1:n-1
		b(i) = (1/h(i))*(a(i+1)-a(i)) - (h(i)/3)*(2*c(i) +c(i+1));
		d(i) = (c(i+1)-c(i))/(3*h(i));
	end



end
