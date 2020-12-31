#assigment_3_problem_1
#steps
steps = 0.001;

#defining time
t = 1:steps:5;
#defining impulse response
h = exp(-t) .* ((t>=1)-(t>=3))
subplot(3,1,1)
plot(t,h);
title("h(t)");
xlabel("t");
ylabel("h(t)");

# defining input single 
x = (t .* ( t >= 1 & t <= 3)) +(1 .* ( t > 3 & t <= 5));
subplot(3,1,2)
plot(t,x);
title("x(t)");
xlabel("t")
ylabel("x(t)")


#output
y = conv(x,h).*steps;
ty = 0:steps:8;
subplot(3,1,3)
plot(ty, y);
title("Convolution of x(t) & h(t)");
xlabel("t");
ylabel("y(t)");
