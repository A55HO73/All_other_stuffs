#range of z is -1.5 to 1.5
# c= -.1 + .65j
#z_max = 10
# n_max = 100


import numpy as np
import matplotlib.pyplot as plt 
import matplotlib.cm as cm


im_width , im_height = 500,500
c = complex(-0.1,0.65)
zabs_max= 10
nit_max = 1000
xmin, xmax = -1.5, 1.5
ymin, ymax = -1.5 , 1.5
xwidth = xmax- xmin
yheight = ymax - ymin


julia = np.zeros((im_width, im_width))
for ix in range(im_width):
    for iy in range(im_width):
        nit = 0
        z = complex(ix/im_width * xwidth+xmin,  iy / im_height * yheight + ymin)

        while abs(z) <= zabs_max and nit <= nit_max:
            z = z**2 + c
            nit += 1

        shade = 1-np.sqrt(nit/nit_max)
        ratio = nit/nit_max
        julia[ix,iy] = ratio



fig, ax = plt.subplots()
ax.imshow(julia, interpolation='nearest', cmap=cm.hot)

xtick_label = np.linspace(xmin, xmax, int(xwidth/.5))
ax.set_xticks([(x- xmin)/xwidth*im_width for x in xtick_label])
ax.set_xticklabels(['{:.1f}'.format(xtick) for xtick in xtick_label])



ytick_label = np.linspace(ymin, ymax, int(yheight/.5))
ax.set_yticks([(y- ymin)/yheight*im_height for y in ytick_label])
ax.set_yticklabels(['{:.1f}'.format(ytick) for ytick in ytick_label])


plt.show()
