from itertools import *
from PIL import Image, ImageDraw
import random

def subsets(iterable):
	for n in range(len(iterable) + 1):
		yield from combinations(iterable, n)


p =[[142,177],[363,123],[592,156],[259,390],[489,490],[744,540],[135,535],[745,541],[336,664],[712,747]]

pic = Image.new("RGB",[1000,1000])
draw = ImageDraw.Draw(pic)

for i in subsets([0,1,2,3,4,5,6,7,8,9]):
	s = [0.0,0.0]
	for j in i :
		s[0] += p[j][0]
		s[1] += p[j][1]

	if len(i) != 0 :
		c = (255,0,0)
		r = 3
		x, y = (int(s[0]/len(i)),int(s[1]/len(i)))
		if x >= 440 and x<= 442 and y >= 447 and y <= 448 :
			print("point", x,y, sep =" ")
		leftUpPoint = (x-r, y-r)
		rightDownPoint =(x+r, y+ r)
		twoPointList = (leftUpPoint, rightDownPoint)
		draw.ellipse(twoPointList,fill = c)


for i in p :
	x,y = (i[0], i[1])
	c = (255,255,255)
	r = 8
	leftUpPoint = (x-r, y-r)
	rightDownPoint =(x+r, y+ r)
	twoPointList = (leftUpPoint, rightDownPoint)
	draw.ellipse(twoPointList, fill = c)


pic.save("output.png")