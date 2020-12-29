#Problem 3:
#Consider the signal 𝑥(𝑡) = 𝑡𝑒−0.1𝑡 cos(𝑡) , 0 ≤ 𝑡 ≤ 20
#(a) Plot the signal 𝑥(𝑡)
#(b) Plot the even decomposition xe(t) of signal 𝑥(𝑡)
#(c) Plot the odd decomposition xo(t) of signal 𝑥(𝑡)
#(d) Plot the signal y(t) = xe(t) + xo(t)
#Use subplot 2x2 format




#definig steps
steps = 0.001


#defining time
t = 0:steps:20

#defining the signal x(t)
x = t.*exp(-0.1 .* t).*cos(t)

#time reversed signal x(-t)
x_nvg = -t.*exp(0.1.*t).*cos(-t)


#defining even part of x(t)
x_even = (1/2)*(x + x_nvg)


#definig odd part of x(t)
x_odd = (1/2)*(x - x_nvg)


#ploting the graph
subplot(2,2,1)   # for 2X2 plot
plot(t,x)
title("x(t)")
#legend("x(t)")

subplot(2,2,2)
plot(t, x_even)
title("Even part of x(t)")
#legend("Even part of x(t)")

subplot(2,2,3)
plot(t, x_odd)
title("Odd part of x(t)")
#legend("Odd part of x(t)")

subplot(2,2,4)
plot(t, x_even+ x_odd)
title("Even of x(t) + Odd of x(t)")
#legend("Even of x(t) + Odd of x(t)")
