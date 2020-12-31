#assigment_3_problem_2
#defining n
n= 0 : 10;
figure;
h = .7 .^ n;
stem(n, h);
xlabel("n");
ylabel("h[n]");
title("h[n]");


#deining x(n)
figure;
x = ((n >= 0 ) - (n >= 4));
stem(n, x);
xlabel("n");
ylabel("x[n]");
title("x[n]");
ylim([0 2]);



figure;
#convolution of x(n) and h(n)
y =  conv(h, x);
n1 = 0  : length(y) - 1;
stem(n1, y);
xlabel("n");
ylabel("Conv(h, x)");
title("Convolution of x[n] & h[n}");

