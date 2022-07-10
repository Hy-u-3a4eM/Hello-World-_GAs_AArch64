Hello-World-.dir=./Hello-World-/
Hello-World-.files=Hello-World-
Release.dir=./Release/
Release.files=Release

Hello-World-=$(Hello-World-.dir)$(Hello-World-.files)
Release=$(Release.dir)$(Hello-World-.files)


all:
	as $(Hello-World-).s -o $(Hello-World-).o
	ld -s $(Hello-World-).o -o $(Hello-World-)
	ld -s $(Hello-World-).o -o $(Release)

