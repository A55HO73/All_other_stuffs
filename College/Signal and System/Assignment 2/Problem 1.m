
#Problem 1:
#Consider the signal 𝑥(𝑡) = 𝑡 sin(2𝑡)(𝑢(𝑡) − 𝑢(𝑡 − 3))
#a) Plot the signal 𝑥(𝑡)
#b) Plot the signal 𝑥(−𝑡)
#c) Plot the signal 𝑥(4𝑡)
#d) Plot the signal 𝑥(0.3𝑡)
#e) Plot the signal 𝑥(𝑡 + 2)
#f) Plot the signal 𝑥(𝑡 − 3)
#g) Plot the signal 𝑥(1 − 3𝑡)



#defining steps
steps = 0.01;
#defining time
#u(t) - u(t-3) will give a pulse of duration 3 unit
#starting from 0 to 3
t = 0:steps:3;

(a)
figure;
#defining the signal x(t)
x= t .*sin(2*pi*t);
plot(t,x);
title("x(t)");


(b)
figure;
#defining x(-t)
x_nvg = -t .*sin(2*pi*(-t));
plot(-t,x_nvg);
title("x(-t)")


(c) 
figure
#ploting x(4t)
a = 4;
plot((1/a)*t, x);
title("x(4t)")

(d)
figure;
#ploting x(.3t)
a = 0.3;
plot((1/.3)*t, x);
title("x(.3t)")

(e)
figure;
#ploting x(t+2)
t0 = 2
plot(t -t0,x);
title("x(t+2)")


(f)
figure;
#ploting x(t-3)
t0 = -3;
plot(t - t0, x);
title("x(t-3)")


(g)
figure;
#ploting x(1- 3t)   or x(-3(t - 1/3))
t0 = -1/3
a = -3
plot((1/a)*(t- t0), x)
title("x(1- 3t)")
