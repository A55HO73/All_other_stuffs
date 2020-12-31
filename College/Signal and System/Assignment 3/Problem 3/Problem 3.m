#assigment_3_problem_3
#defining steps
steps = 0.001;

#defining Time
t = 0: steps: 8;

#defining x(t)
subplot(3,1,1);
x = t .* ( ( t >= 0) - ( t >= 5));
plot(t, x);
title( "x(t)");
xlabel( "t");
ylabel("x(t)");


subplot(3,1,2);
#defining y (t)
y = ( t- 2) .* ( ( t >= 2) - ( t >= 7));
plot( t, y);
title("y(t)");
xlabel("t");
ylabel("y(t)");


subplot(3,1,3);
#calculating cross-corelation b/w x(t) & y(t)
c = xcorr(x, y);
plot(c);
title( "Cross-Corelation ");
xlabel("t");
ylabel(" xcorr( x,y)");
