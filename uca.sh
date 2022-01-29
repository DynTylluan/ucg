#!/usr/bin/python
p=print
p('You are dying. 1 = live, 2 = die')
x=input()
m="You won" if x=="1" else "You died"
p(m)