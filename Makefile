io.dir=./Hello-World-/
io.files=Hello-World-
Release.dir=./Release/
Release.files=Release

io=$(io.dir)$(io.files)
Release=$(Release.dir)$(io.files)


all:
	as $(io).s -o $(io).o
	ld -s $(io).o -o $(io)
	ld -s $(io).o -o $(Release)

