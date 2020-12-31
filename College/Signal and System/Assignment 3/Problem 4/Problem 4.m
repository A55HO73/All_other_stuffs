#assigment_3_problem_4;
#defining steps 
steps = 0.001;


#definig time 
t = -1:steps: 10;


#defining x(t) 
x = exp(-3 .* t) .*(t>= 0)
subplot(2,1,1)
plot(t,x);
title("x(t)");
xlabel("t");
ylabel("x(t)");




#calculating auto- corelation
ato = xcorr(x);
subplot(2,1,2);
plot(ato); #ploting the auto corelation of x(t)
xlabel("t");
ylabel("auto-corelation of x(t)");
title("AutoCorelation of x(t)");
