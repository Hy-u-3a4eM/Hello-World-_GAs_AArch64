dir=./Hello-World-/
files=Hello-World-

io=$(dir)$(files)


all:
	as $(io).s -o $(io).o
	ld -s $(io).o -o $(io)

